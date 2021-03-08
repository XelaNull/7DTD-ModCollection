#!/usr/bin/php
<?php
//echo "Reading in $argv[1]\n";
$incomingFile=file($argv[1]);
$cnt=0;
foreach($incomingFile as $line)
  {
    if(strlen($line)<3) continue;
    $cnt++;
    $line=str_replace("\n","",$line);
    $line=str_replace("\r","",$line);
    // Test to see if this is a header
    $lowerLine=strtolower($line);
    if(strpos($lowerLine,",english")!==FALSE)
      { // This *IS* a Header Line
        $HeaderArray=explode(",",$lowerLine);
        $HeaderCnt=0;
        foreach($HeaderArray as $HeaderItem)
          {
            $HeaderCnt++;
            $Header[$HeaderCnt]=$HeaderItem;
            //echo "Header[$HeaderCnt]: [$HeaderItem]\n";
          }
        continue;
      }
    // FROM:
    // Key,Source,Context,Changes,English,French,German,Klingon,Spanish,Polish
    // Key,Source,Context,UsedInMainMenu,NoTranslate,english
    // Key,Source,Context,English,German
      
    // TO:  
    //Key,File,Type,UsedInMainMenu,NoTranslate,english,Context / Alternate Text,german,
    //   latam,french,italian,japanese,koreana,polish,brazilian,russian,turkish,schinese,tchinese,spanish

    // Break up the line into fields
    $lineArray=str_getcsv($line,",","\"");
    $LineCnt=0;
    $Key=''; $File=''; $Type=''; $UsedInMainMenu=''; $NoTranslate='';
    $English=''; $AltText=''; $German=''; $Latam=''; $French=''; $Italian='';
    $Japanese=''; $Koreana=''; $Polish=''; $Brazilian=''; $Russian=''; $Turkish='';
    $SChinese=''; $TChinese=''; $Spanish='';
    foreach($lineArray as $lineItem)
      {
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

    //echo "$cnt(".strlen($line)."): [$line]\n";
    echo "$Key,$File,$Type,$UsedInMainMenu,$NoTranslate,$English,$AltText,$German,$Latam,$French,$Italian,$Japanese,$Koreana,$Polish,$Brazilian,$Russian,$Turkish,$SChinese,$TChinese,$Spanish\n";
  }

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