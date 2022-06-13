//
//  ViewController.swift
//  goldenMindApp
//
//  Created by 曾曜澤 on 2022/6/12.
//

import UIKit

class ViewController: UIViewController {
    //輸入題目
    var questionData = [Question(question: "四角形剪去一角後，還有幾個角？", choices: ["三個", "四個", "五個", "六個"], answer: "五個"), Question(question: "金庸是知名作家，以下哪本不是金庸小說？", choices: ["書劍恩仇錄", "俠客行", "流星蝴蝶劍", "鹿鼎記"], answer: "流星蝴蝶劍"), Question(question: "航海王中，魯夫的夥伴「喬巴」是何種動物", choices: ["牛", "馬", "鹿", "羊"], answer: "鹿"), Question(question: "哪一個星座，不屬於「水象星座」呢？", choices: ["巨蟹座", "雙魚座", "水瓶座", "天蠍座"], answer: "水瓶座"), Question(question: "汗牛充棟是什麼意思？", choices: ["剛運動完，流很多汗", "藏書非常多", "知識豐富", "財富很多"], answer: "藏書非常多"), Question(question: "人稱「數學小王子」，請問是下列何人", choices: ["牛頓", "愛因斯坦", "高斯", "畢達哥拉斯"], answer: "高斯"), Question(question: "唐宋八大家，又稱唐宋古文八大家，請問下列何人", choices: ["曾鞏", "歐陽修", "范仲淹", "韓愈"], answer: "范仲淹"), Question(question: "「挪威的森林」是哪位作家的作品", choices: ["村上春樹", "九把刀", "藤井樹", "夏目漱石"], answer: "村上春樹"), Question(question: "四川名菜「麻婆豆腐」名稱的由來，是因為發明者", choices: ["臉上有痲子", "專種花椒香料", "老公就姓麻", "婆婆很壞心"], answer: "臉上有痲子"), Question(question: "台灣本島面積最大的「縣」是花蓮，最小的縣是？", choices: ["雲林縣", "新竹縣", "嘉義縣", "彰化縣"], answer: "彰化縣"), Question(question: "「Iiha Formosa」意思是美麗之島，也是哪一國人初見台灣時所說的話？", choices: ["荷蘭", "西班牙", "葡萄牙", "德國"], answer: "葡萄牙"), Question(question: "下列哪一種水果又稱「西紅柿」？", choices: ["蕃茄", "蓮霧", "草莓", "釋迦"], answer: "蕃茄"), Question(question: "200年前，台灣最繁華的地方是「一府」、「二鹿」、「三艋舺」，請問「一府」指的是現今何處？", choices: ["高雄", "台中", "台南", "彰化"], answer: "台南"), Question(question: "「三姑六婆」原指中國女性的什麼？", choices: ["稱謂", "地位", "職業", "年紀"], answer: "職業"), Question(question: "「鋤禾日當午，汗滴禾下土」裡的「午」，指的是什麼時間？", choices: ["中午11點到下午1點", "中午12點到下午2點", "下午1點到下午3點", "下午3點到下午5點"], answer: "中午11點到下午1點"), Question(question: "小白兔的眼睛是紅色的，是因為小白兔", choices: ["紅蘿蔔吃太多", "眼球內血液的顏色", "體內分泌膽紅素", "他害羞"], answer: "眼球內血液的顏色"), Question(question: "太陽系中，最大的行星是？", choices: ["天王星", "木星", "土星", "地球"], answer: "木星"), Question(question: "排放大量的CO2對地球人類最直接的環境問題是什麼？", choices: ["地球溫度變高", "沙漠縮小", "北極冰層融化變慢", "酸雨 "], answer: "地球溫度變高"), Question(question: "「在天願做比翼鳥，在地願做連理枝」是出自哪對戀人的故事？", choices: ["牛郎與織女", "梁山伯與祝英台", "唐玄宗與楊貴妃", "后羿和嫦娥"], answer: "唐玄宗與楊貴妃"), Question(question: "「爽」字表示愉悅，「爽」字從象形來看，所描繪的形象是？", choices: ["樹上有花", "腋下有火", "桌上有菜", "屋下有人"], answer: "腋下有火"), Question(question: "我們都知道星期一到星期天一共有七天，稱為一週，那這個星期制是由哪個民族發展出來？", choices: ["巴比倫人", "馬雅人", "印度人", "中國人"], answer: "巴比倫人"), Question(question: "八佾舞為下列何種慶典中所用", choices: ["祭孔大典" , "七夕七娘媽", "中元普渡", "端午"], answer: "祭孔大典"), Question(question: "全世界最小的國家「梵諦岡」在那個城市境內？", choices: ["紐約", "羅馬", "倫敦", "巴黎"], answer: "羅馬"), Question(question: "由荷蘭設計師霍夫曼設計的巨大黃色鴨子，是一個名為「Rubber Duck Project」的企劃。請問：黃色小鴨的主要使命是什麼？", choices: ["宣揚荷蘭藝術", "祈求世界和平", "陪伴設計師環遊世界", "廣告宣傳"], answer: "祈求世界和平"), Question(question: "為什麼噴了防蚊液，蚊子就不會靠近？", choices: ["使體溫降低", "味道掩蓋人的氣味" , "味道像蚊子同類", "形成防護膜口器無法插入"], answer: "味道掩蓋人的氣味"), Question(question: "下列哪種生物是魚類動物？", choices: ["甲魚", "蝌蚪", "海馬", "娃娃魚"], answer: "海馬"), Question(question: "成語「夜郎自大」中的「夜郎」指的是？", choices: ["人名", "地名", "國名", "官名"], answer: "國名"), Question(question: "孕育古埃及文明的「尼羅河」，最後注入哪一座海？", choices: ["地中海", "紅海", "愛琴海", "黃海"], answer: "地中海")]
    //
    var index = 0
    var score = 0
    var timer = Timer()
    var counter = 16
    
    @IBOutlet var firstView: UIView!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var challengerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionNumLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet var choiceButton: [UIButton]!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet var lastView: UIView!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var resultView: UIView!
    //出題
     func showQuestion() {
         let question = questionData[index]
         questionLabel.text = question.question
         for i in 0...3 {
             choiceButton[i].setTitle(String(question.choices[i]), for: .normal)
         }
     }
    //倒數計時
    @objc func updateTime() {
        counter -= 1
        timeLabel.text = "Time: \(counter)"
        if counter == 0 {
            timer.invalidate()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //亂數出題
        lastView.isHidden = true
        resultView.isHidden = true
        questionData.shuffle()
        showQuestion()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        if counter == 0 {
            timer.invalidate()
        }
    }
    func changeNum() {
        scoreLabel.text = "Score: \(score)"
        questionNumLabel.text = "\(index + 1)/10"
    }
    @IBAction func chooseButton(_ sender: UIButton) {
        index += 1
        progressView.progress += 0.1
        if counter == 0 {
            counter = 16
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
        let correctAnswer = questionData[index - 1].answer
        if sender.currentTitle == String(correctAnswer) {
            score += 10
            changeNum()
        } else {
            score += 0
            changeNum()
        }
        //10題後結束遊戲
        if index == 10 {
            index = 9
            changeNum()
            resultView.isHidden = false
        } else {
            lastView.isHidden = true
        }
       
        showQuestion()
        counter = 16
       
    }
    @IBAction func start(_ sender: UIButton) {
        challengerLabel.text = "Challenger: \(nameLabel.text!)"
        firstView.isHidden = true
        counter = 16
    }
    @IBAction func rechallenge(_ sender: Any) {
        lastView.isHidden = true
        index = 0
        score = 0
        progressView.progress = 0
        changeNum()
        questionData.shuffle()
        showQuestion()
        firstView.isHidden = false
        counter = 16
    }
    @IBAction func result(_ sender: UIButton) {
        resultView.isHidden = true
        lastView.isHidden = false
        scoreLabel2.text = "\(score)"
        if score <= 60 {
            commentsLabel.text = "獎金 3000 元"
        } else if score <= 75 {
            commentsLabel.text = "獎金 20000 元"
        } else if score <= 85 {
            commentsLabel.text = "獎金 30000 元"
        } else if score <= 95 {
            commentsLabel.text = "獎金 50000 元"
        } else {
            commentsLabel.text = "獎金 100000 元"
        }
    }
}

