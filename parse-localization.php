#!/usr/bin/php
<?php
/*
parse-localization.php -- Written by Shouden Kalferas
For use with 7 Days to Die Localization.txt
Premise:
  Different modlet authors appear to use different syntax/format than what
  is currently being used by the vanilla game in A19. This modlet will read in
  various modlet Localization.txt and output a standardized format. It also will
  convert all usages of " within a replace with '. It surrounds all language 
  values with double quotes and ensures that there are no extra quotes.
Instructions:
  Before you use, make SURE that the path to your php executable is correct on
  the top line of this script. Different operating systems have different paths
  to this. Next, make SURE you give this script an executable bit like: 
    chmod a+x parse-localization.php
Example Syntax: ./parse-localization.php <full path to Localization.txt that you wish to convert>
The output will NOT include the required header at the top of the Localization.txt
At the time of this writing, the current first line of a Localization.txt file is:
Key,File,Type,UsedInMainMenu,NoTranslate,english,Context / Alternate Text,german,latam,french,italian,japanese,koreana,polish,brazilian,russian,turkish,schinese,tchinese,spanish
*/
// Read in the file to convert and store as an array we can loop over.
$incomingFile=file($argv[1]);
$cnt=0;
// Loop over each line in the file to convert.
foreach($incomingFile as $line)
  {
    // If the length of the line is less than three characters, assume it is a blank line.
    // three characters to make sure we rule out lines with \n and \r together
    if(strlen($line)<3) continue;
    // Start a line counter
    $cnt++;
    // Remove the \n and \r (line feed & carriage return) characters from the line
    $line=str_replace("\n","",$line);
    $line=str_replace("\r","",$line);
    // Test the line to see if the line is a file header
    // We perform this test by first converting the entire line to lowercase..
    // Then we look to see if the string ",english" is present. This string is 
    // universal to all formats of the Localization.txt that I've encountered.
    $lowerLine=strtolower($line);
    if(strpos($lowerLine,",english")!==FALSE)
      { // This *IS* a Header Line
        // Create an array of all the field names in the header line.
        $HeaderArray=explode(",",$lowerLine);
        $HeaderCnt=0;
        // Loop over all the fields in the header
        foreach($HeaderArray as $HeaderItem)
          {
            // Create an array called Header and store into it the values of each
            // of the fields, along with the header position.
            $HeaderCnt++;
            $Header[$HeaderCnt]=$HeaderItem;
            //echo "Header[$HeaderCnt]: [$HeaderItem]\n";
          }
        // Once we are done looping over all the fields in the header line, we
        // should move on to the next line in the file.
        continue;
      } 
      
    // Variations of the Localization.txt that I've encountered:
    // FROM:
    // Key,Source,Context,Changes,English,French,German,Klingon,Spanish,Polish
    // Key,Source,Context,UsedInMainMenu,NoTranslate,english
    // Key,Source,Context,English,German
      
    // What we want to convert the above into:
    // TO:  
    //Key,File,Type,UsedInMainMenu,NoTranslate,english,Context / Alternate Text,german,latam,french,italian,japanese,koreana,polish,brazilian,russian,turkish,schinese,tchinese,spanish

    // Create an array called lineArray that is comprised of all the values from
    // the comma-delimitted file.
    $lineArray=str_getcsv($line,",","\"");
    $LineCnt=0;
    // Ensure that for each line, we set all our variables to NULL so we don't 
    // carry over any value from the previous line.
    $Key=''; $File=''; $Type=''; $UsedInMainMenu=''; $NoTranslate='';
    $English=''; $AltText=''; $German=''; $Latam=''; $French=''; $Italian='';
    $Japanese=''; $Koreana=''; $Polish=''; $Brazilian=''; $Russian=''; $Turkish='';
    $SChinese=''; $TChinese=''; $Spanish='';
    // Loop over all values in the line
    foreach($lineArray as $lineItem)
      {
        // The section below stores each value into a variable representing the
        // final value/variable we will want to output.
        $LineCnt++;
        switch($Header[$LineCnt]) 
          {
            case "key": $Key=$lineItem; break;
            case "file":
            case "source": $File=$lineItem; break;
            case "type":
            case "context": $Type=$lineItem; break;
            case "usedinmainmenu": $UsedInMainMenu=$lineItem; break;
            case "notranslate": $NoTranslate=$lineItem; break;
            case "english": $English=addQuotes($lineItem); break;
            case "context / alternate text": $AltText=$lineItem; break;
            case "german": $German=addQuotes($lineItem); break;
            case "latam": $Latam=addQuotes($lineItem); break;
            case "french": $French=addQuotes($lineItem); break;
            case "italian": $Italian=addQuotes($lineItem); break;
            case "japanese": $Japanese=addQuotes($lineItem); break;
            case "koreana": $Koreana=addQuotes($lineItem); break;
            case "polish": $Polish=addQuotes($lineItem); break;
            case "brazilian": $Brazilian=addQuotes($lineItem); break;
            case "russian": $Russian=addQuotes($lineItem); break;
            case "turkish": $Turkish=addQuotes($lineItem); break;
            case "schinese": $SChinese=addQuotes($lineItem); break;
            case "tchinese": $TChinese=addQuotes($lineItem); break;
            case "spanish": $Spanish=addQuotes($lineItem); break;
          }        
      }  
    
    // TO:  
    //Key,File,Type,UsedInMainMenu,NoTranslate,english,Context / Alternate Text,german,
    //   latam,french,italian,japanese,koreana,polish,brazilian,russian,turkish,schinese,tchinese,spanish   

    // Output the line in the correct standardized format per A19's vanilla Localization.txt XML
    echo "$Key,$File,$Type,$UsedInMainMenu,$NoTranslate,$English,$AltText,$German,$Latam,$French,$Italian,$Japanese,$Koreana,$Polish,$Brazilian,$Russian,$Turkish,$SChinese,$TChinese,$Spanish\n";
  }

// This function performs the following functions:
//  - Converts all " to '
//  - Removes all quotations around the value
//  - Trims any whitespace at the front or end of the line
//  - Adds double-quotes around the value
function addQuotes($in)
{
  if(strlen($in)<1) return;
  $FirstChar=$in[0];
  $in=str_replace('"',"'",$in);
  $in=str_replace("''","'",$in);
  if($in[0]=="'") $in=substr($in,1,-1);
  $in=trim($in);
  $in="\"$in\"";
  return($in);
}

?>