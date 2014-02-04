#TODO: show only kana from checked rows
#TODO: show kana only for x amount of time, then fail
#TODO: build points-system. x/y kana correct
#TODO: show 5 kana under kana to choose from. 4 random, 1 correct

kana = $("#kana")
romaji = $("#romaji")
hiragana = [
  [
    [1]
    ["あ"]
    ["い"]
    ["う"]
    ["え"]
    ["お"]
  ]
  [
    [2]
    ["か"]
    ["き"]
    ["く"]
    ["け"]
    ["こ"]
  ]
  [
    [3]
    ["が"]
    ["ぎ"]
    ["ぐ"]
    ["げ"]
    ["ご"]
  ]
  [
    [4]
    ["さ"]
    ["し"]
    ["す"]
    ["せ"]
    ["そ"]
  ]
  [
    [5]
    ["ざ"]
    ["じ"]
    ["ず"]
    ["ぜ"]
    ["ぞ"]
  ]
  [
    [6]
    ["た"]
    ["ち"]
    ["つ"]
    ["て"]
    ["と"]
  ]
  [
    [7]
    ["だ"]
    ["ぢ"]
    ["づ"]
    ["で"]
    ["ど"]
  ]
  [
    [8]
    ["な"]
    ["に"]
    ["ぬ"]
    ["ね"]
    ["の"]
  ]
  [
    [9]
    ["は"]
    ["ひ"]
    ["ふ"]
    ["へ"]
    ["ほ"]
  ]
  [
    [10]
    ["ば"]
    ["び"]
    ["ぶ"]
    ["べ"]
    ["ぼ"]
  ]
  [
    [11]
    ["ぱ"]
    ["ぴ"]
    ["ぷ"]
    ["ぺ"]
    ["ぽ"]
  ]
  [
    [12]
    ["ま"]
    ["み"]
    ["む"]
    ["め"]
    ["も"]
  ]
  [
    [13]
    ["や"]
    [""]
    ["ゆ"]
    [""]
    ["よ"]
  ]
  [
    [14]
    ["ら"]
    ["り"]
    ["る"]
    ["れ"]
    ["ろ"]
  ]
  [
    [15]
    ["わ"]
    ["ゐ"]
    [""]
    ["ゑ"]
    ["を"]
  ]
  [
    [16]
    ["ん"]
    [""]
    [""]
    [""]
    [""]
  ]
]
katakana = [
  [
    [1]
    ["ア"]
    ["イ"]
    ["ウ"]
    ["エ"]
    ["オ"]
  ]
  [
    [2]
    ["カ"]
    ["キ"]
    ["ク"]
    ["ケ"]
    ["コ"]
  ]
  [
    [3]
    ["ガ"]
    ["ギ"]
    ["グ"]
    ["ゲ"]
    ["ゴ"]
  ]
  [
    [4]
    ["サ"]
    ["シ"]
    ["ス"]
    ["セ"]
    ["ソ"]
  ]
  [
    [5]
    ["ザ"]
    ["ジ"]
    ["ズ"]
    ["ゼ"]
    ["ゾ"]
  ]
  [
    [6]
    ["タ"]
    ["チ"]
    ["ツ"]
    ["テ"]
    ["ト"]
  ]
  [
    [7]
    ["ダ"]
    ["ヂ"]
    ["ヅ"]
    ["デ"]
    ["ドゾ"]
  ]
  [
    [8]
    ["ナ"]
    ["ニ"]
    ["ヌ"]
    ["ネ"]
    ["ノ"]
  ]
  [
    [9]
    ["ハ"]
    ["ヒ"]
    ["フ"]
    ["ヘ"]
    ["ホ"]
  ]
  [
    [10]
    ["バ"]
    ["ビ"]
    ["ブ"]
    ["ベ"]
    ["ボ"]
  ]
  [
    [11]
    ["パ"]
    ["ピ"]
    ["プ"]
    ["ペ"]
    ["ポ"]
  ]
  [
    [12]
    ["マ"]
    ["ミ"]
    ["ム"]
    ["メ"]
    ["モ"]
  ]
  [
    [13]
    ["ヤ"]
    [""]
    ["ユ"]
    [""]
    ["ヨ"]
  ]
  [
    [14]
    ["ラ"]
    ["リ"]
    ["ル"]
    ["レ"]
    ["ロ"]
  ]
  [
    [15]
    ["ワ"]
    [""]
    [""]
    [""]
    ["ヲ"]
  ]
  [
    [16]
    ["ン"]
    [""]
    [""]
    [""]
    [""]
  ]
]
sounds = [
  [
    [1]
    ["a"]
    ["i"]
    ["u"]
    ["e"]
    ["o"]
  ]
  [
    [2]
    ["ka"]
    ["ki"]
    ["ku"]
    ["ke"]
    ["ko"]
  ]
  [
    [3]
    ["ga"]
    ["gi"]
    ["gu"]
    ["ge"]
    ["go"]
  ]
  [
    [4]
    ["sa"]
    ["shi"]
    ["su"]
    ["se"]
    ["so"]
  ]
  [
    [5]
    ["za"]
    ["zi"]
    ["zu"]
    ["ze"]
    ["zo"]
  ]
  [
    [6]
    ["ta"]
    ["chi"]
    ["tsu"]
    ["te"]
    ["to"]
  ]
  [
    [7]
    ["da"]
    ["ji"]
    ["zu"]
    ["de"]
    ["do"]
  ]
  [
    [8]
    ["na"]
    ["ni"]
    ["nu"]
    ["ne"]
    ["no"]
  ]
  [
    [9]
    ["ha"]
    ["hi"]
    ["fu"]
    ["he"]
    ["ho"]
  ]
  [
    [10]
    ["ba"]
    ["bi"]
    ["bu"]
    ["be"]
    ["bo"]
  ]
  [
    [11]
    ["pa"]
    ["pi"]
    ["pu"]
    ["pe"]
    ["po"]
  ]
  [
    [12]
    ["ma"]
    ["mi"]
    ["mu"]
    ["me"]
    ["mo"]
  ]
  [
    [13]
    ["ya"]
    [""]
    ["yu"]
    [""]
    ["yo"]
  ]
  [
    [14]
    ["ra"]
    ["ri"]
    ["ru"]
    ["re"]
    ["ro"]
  ]
  [
    [15]
    ["wa"]
    [""]
    [""]
    [""]
    ["o/wo"]
  ]
  [
    [16]
    ["n"]
    [""]
    [""]
    [""]
    [""]
  ]
]
hiraganaMenu = $("#hiragana-checkboxes")
katakanaMenu = $("#katakana-checkboxes")
menuButton = $("#off-canvas-menu")
fill_checkboxes = ->
  x = 0
  while x < 16
    hiraganaMenu.append "<div class='checkbox'><label class='sound'>"+ sounds[x][1] + "</label><label><input type='checkbox' value='" + x + "'></label>" + hiragana[x][1] + hiragana[x][2] + hiragana[x][3] + hiragana[x][4] + hiragana[x][5] + "</div>"
    katakanaMenu.append "<div class='checkbox'><label><input type='checkbox' value='" + x + "'></label>" + katakana[x][1] + katakana[x][2] + katakana[x][3] + katakana[x][4] + katakana[x][5] + "</div>"
    x++
  return

choose_row = (r) -> # r is array with all rows
  rows_count = r.length
  @i = Math.floor((Math.random() * rows_count)) #random Array-entry
  r[@i]

get_kana = (h, k) -> #check if not empty - only show rows user wants to learn. (99 = empty)
  console.log("h = " + h + " k = " + k[0])
  if h[0] isnt 99 and k[0] isnt 99 # are both values set?
    @hk = Math.floor((Math.random() * 2)) # 0 = Hiragana, 1 = Katakana
    console.log ("here")
    if hk is 0 # if Hiragana -> choose i from 1 - h.length-1
      console.log "Hiragana Row " + choose_row(h)
    else # if Katakana -> choose i from 1 - k.length-1
      console.log "Katakana Row " + choose_row(k)
  else if h[0] isnt 99 and k[0] is 99 # only h set so only choose Hiragana
    @hk = 0
    console.log "Hiragana Row " + choose_row(h)
  else if h[0] is 99 and k[0] isnt 99  # only k set so only choose Katakana
    @hk = 1
    console.log "Katakana Row " + choose_row(k)
  
  # get a possible i from h or a possible i from k
  # h.length, k.length
  # choose randomly if h or k
  # choose i from 1 - h.length-1 oder 1 - k.length-1 
  #i = Math.floor((Math.random()*16)); //rows
  @j = Math.floor((Math.random() * 5) + 1) #columns
  console.log "Column " + @j
  return @i
  @j

write_kana = (h, k) -> #h = Hiragana-rows, k = Katakana-rows
  get_kana h, k # h could be for example [1,3,7]. Therefor i can only be 1,3 or 7
  if @hk is 0 and hiragana[@i][@j] != ''
    kana.html hiragana[@i][@j]
  else if @hk is 0 and hiragana[@i][@j] == ''
	  kana.html hiragana[@i-3][@j]
  else if @hk is 1 and katakna[@i][@j] != ''
    kana.html katakana[@i][@j]
  else 
    kana.html katakana[@i-3][@j]
  romaji.append sounds[@i][@j] + " "#TODO: write only one correct and 4 false. the correct must be clicked

  #console.log(h,k);
  console.log "row [" + @i + "], col [" + @j + "]"
  return

write_kana [ #make this dynamic to chosen rows
  1
  2
  3
  4
], [
  99
]
fill_checkboxes()
menuButton.on "show.bs.collapse", ->
  $("#off-canvas-button").css "right", "320px"
  $(".sidebar-offcanvas").css "background-color", "transparent"
  return

menuButton.on "hide.bs.collapse", ->
  $("#off-canvas-button").css "right", "0"
  $(".sidebar-offcanvas").css "background-color", "#000"
  return
