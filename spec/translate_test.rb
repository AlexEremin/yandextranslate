require "rspec"
require_relative '../yandextranslate.rb'

describe Translator do

  Key = 'trnsl.1.1.20151227T085528Z.a14efb402b71cae3.d511f476e29f140e71a022b3b48b202b7720ef0e'
  test = Translator.new

  it "detect test" do
    expect(test.detect(Key, 'dog')).to eq "code" => 200, "lang" => 'en'
  end


  it "get_lang test" do
    expect(test.get_langs(Key, 'ja')).to eq "dirs"=>["az-ru", "be-bg", "be-cs", "be-de", "be-en", "be-es", "be-fr", "be-it", "be-pl", "be-ro", "be-ru", "be-sr", "be-tr", "bg-be", "bg-ru", "bg-uk", "ca-en", "ca-ru", "cs-be", "cs-en", "cs-ru", "cs-uk", "da-en", "da-ru", "de-be", "de-en", "de-es", "de-fr", "de-it", "de-ru", "de-tr", "de-uk", "el-en", "el-ru", "en-be", "en-ca", "en-cs", "en-da", "en-de", "en-el", "en-es", "en-et", "en-fi", "en-fr", "en-hu", "en-it", "en-lt", "en-lv", "en-mk", "en-nl", "en-no", "en-pt", "en-ru", "en-sk", "en-sl", "en-sq", "en-sv", "en-tr", "en-uk", "es-be", "es-de", "es-en", "es-ru", "es-uk", "et-en", "et-ru", "fi-en", "fi-ru", "fr-be", "fr-de", "fr-en", "fr-ru", "fr-uk", "hr-ru", "hu-en", "hu-ru", "hy-ru", "it-be", "it-de", "it-en", "it-ru", "it-uk", "lt-en", "lt-ru", "lv-en", "lv-ru", "mk-en", "mk-ru", "nl-en", "nl-ru", "no-en", "no-ru", "pl-be", "pl-ru", "pl-uk", "pt-en", "pt-ru", "ro-be", "ro-ru", "ro-uk", "ru-az", "ru-be", "ru-bg", "ru-ca", "ru-cs", "ru-da", "ru-de", "ru-el", "ru-en", "ru-es", "ru-et", "ru-fi", "ru-fr", "ru-hr", "ru-hu", "ru-hy", "ru-it", "ru-lt", "ru-lv", "ru-mk", "ru-nl", "ru-no", "ru-pl", "ru-pt", "ru-ro", "ru-sk", "ru-sl", "ru-sq", "ru-sr", "ru-sv", "ru-tr", "ru-uk", "sk-en", "sk-ru", "sl-en", "sl-ru", "sq-en", "sq-ru", "sr-be", "sr-ru", "sr-uk", "sv-en", "sv-ru", "tr-be", "tr-de", "tr-en", "tr-ru", "tr-uk", "uk-bg", "uk-cs", "uk-de", "uk-en", "uk-es", "uk-fr", "uk-it", "uk-pl", "uk-ro", "uk-ru", "uk-sr", "uk-tr"], "langs"=>{"af"=>"Afrikaans", "ar"=>"Arabic", "az"=>"Azerbaijani", "ba"=>"Bashkir", "be"=>"Belarusian", "bg"=>"Bulgarian", "bs"=>"Bosnian", "ca"=>"Catalan", "cs"=>"Czech", "cy"=>"Welsh", "da"=>"Danish", "de"=>"German", "el"=>"Greek", "en"=>"English", "es"=>"Spanish", "et"=>"Estonian", "eu"=>"Basque", "fa"=>"Persian", "fi"=>"Finnish", "fr"=>"French", "ga"=>"Irish", "gl"=>"Galician", "he"=>"Hebrew", "hi"=>"Hindi", "hr"=>"Croatian", "ht"=>"Haitian", "hu"=>"Hungarian", "hy"=>"Armenian", "id"=>"Indonesian", "is"=>"Icelandic", "it"=>"Italian", "ja"=>"Japanese", "ka"=>"Georgian", "kk"=>"Kazakh", "ko"=>"Korean", "ky"=>"Kirghiz", "la"=>"Latin", "lt"=>"Lithuanian", "lv"=>"Latvian", "mg"=>"Malagasy", "mk"=>"Macedonian", "mn"=>"Mongolian", "ms"=>"Malay", "mt"=>"Maltese", "nl"=>"Dutch", "no"=>"Norwegian", "pl"=>"Polish", "pt"=>"Portuguese", "ro"=>"Romanian", "ru"=>"Russian", "sk"=>"Slovak", "sl"=>"Slovenian", "sq"=>"Albanian", "sr"=>"Serbian", "sv"=>"Swedish", "sw"=>"Swahili", "tg"=>"Tajik", "th"=>"Thai", "tl"=>"Tagalog", "tr"=>"Turkish", "tt"=>"Tatar", "uk"=>"Ukrainian", "ur"=>"Urdu", "uz"=>"Uzbek", "vi"=>"Vietnamese", "zh"=>"Chinese"}
  end

  it "translate test" do 
    expect(test.translate(Key, 'кошка', 'en')).to eq "code"=>200, "detected"=>{"lang"=>"ru"}, "lang"=>"ru-en", "text"=>["cat"] 
  end	
  
end
