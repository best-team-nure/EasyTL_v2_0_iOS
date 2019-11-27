//
//  ViewController.swift
//  EASY TL v3
//
//  Created by User on 9/26/19.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var topicHeader: UILabel!
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var startTest: UIButton!
    @IBOutlet weak var toTest: UIButton!
    @IBOutlet weak var topic: UITextView!
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet weak var topic2: UIButton!
    
    func buttonsHide(){
        header.isHidden = true
        b1.isHidden = true
        b2.isHidden = true
        b3.isHidden = true
        b4.isHidden = true
        b5.isHidden = true
        b6.isHidden = true
    }
    
    func topicAppear(){
        topicHeader.isHidden = false
        topic.isHidden = false
        topic.isEditable = false
        topic.isScrollEnabled = true
        backButton.isHidden = false
    }
    
    var topicNum: Int = 0
    
    @IBAction func handle1Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        toTest.isHidden = false
        topicNum = 1;
        print(topicNum)
        topicHeader.text = "Начало движения"
        topic.text = "Всегда делай это: \n -убедись, что твои действия будут безопасны и не создадут препятствий или опасности другим участникам движения (вообще всегда, не только в вождении)!\n -не будь глупцом, уступи дорогу пешеходам и транспортным средствам при выезде из жилой зоны, дворов, мест стоянки! \nсъезжая же с дороги уступи дорогу велосипедистам и пешеходам, направление движения которых ты пересекаешь!\n -если из пункта 2 и 3 не понятно, то знай - придется уступать дорогу, и при перестроении тем машинам, что движутся в попутном направлении по той полосе, на которую ты намерен перестроиться - тоже:)\n -поворачиваешь? даже если это “поворот не туда” - заблаговременно займи соответствующее крайнее положение на проезжей части, предназначенной для движения в этом направлении!\n -дорогой друг, поворачивай так, чтобы при выезде с пересечения проезжих частей твоя машина не оказалась на встречке :) -выезд с перекрестка, где организованно круговое движение можешь осуществлять с любой полосы, если направление движения не определено дорожными знаками или разметкой"
    }
    
    @IBAction func handle2Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 2;
        topic2.isHidden = false
        topicHeader.text = "Обгон"
        topic.text = "Продолжим. Мы бы советовали прислушаться к следующим правилам обгона: \n - убедись в том, что ни один водитель за тобой не начал обгона \n - убедись в том, водитель впереди не подал сигнал поворота, встречная полоса свободна и что после обгона он сможет вернуться на свою полосу не создав препятствий обгоняемому транспортному средству \n - во время обгона можно остаться на встречной полосе, если по возвращении на свою полосу придется снова начать обгон \n - не препятствуй обгону путем повышения скорости движения или как-либо иначе! у тебя в детстве было мало грустно закончившихся гонок? :) \n - если дорожная обстановка не позволяет осуществить обгон - не геройствуй, просто двигайся как можно правее и при необходимости пропусти других участников движения!\n Не обгоняй на: \n - на перекрестке; \n - на ж/д переездах (+100 м перед ними); \n -ближе чем за 50 м перед пешеходным переходом в населенном пункте и 100 м — вне населенного пункта; \n - в конце подъема, в тоннелях, на мостах, эстакадах, путепроводах, крутых поворотах и других участках дорог с ограниченным обзором или в условиях недостаточной видимости"
    }
    
    
    @IBAction func handle3Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 3;
        topicHeader.text = "Остановка и стоянка"
        topic.text = "Ого! Ну ты прямо бьешь рекорды по темам! \n Сейчас будем замедляться и говорить о стоянке. \n Помни:\n - останавливайся только в специально отведенных для этого местах; \n - если ты не нашел таких мест - можешь остановиться возле правого края проезжей части; \n - можешь останавливаться и на левой стороне дороги с ОДНОСТОРОННИМ движением; \n- мы бы не советовали останавливаться у разделительной полосы; \n - можешь поставить свой суперкар под углом к краю проезжей части там, где  это не будет препятствовать движению других транспортных средств. \n - не провоцируй органы, не становись во втором ряду на проезжей части; \n - возле тротуаров или других мест с пешеходным движением ставить транспортные средства под углом разрешается только передней частью, а на подъемах - только задней частью; \n - можешь остановиться слева на трамвайной колее только для выполнения правил ПДД; \n - а вот на колее справа на проезжей части еще и для посадки или высадки пассажиров; \n\n НЕТ ОСТАНОВКАМ: \n на железнодорожных переездах;\n на эстакадах, мостах, путепроводах и под ними, а также в туннелях; \n на пешеходных переходах и ближе 10 м от них с обеих сторон, кроме случаев предоставления преимущества в движении; \n на перекрестках и ближе 10 м от края пересекаемой проезжей части"
    }
    
    
    @IBAction func handle4click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 4;
        topicHeader.text = "Проезд перекрестков"
        topic.text = "Перекресток? Направо пойдешь, налево пойдешь, прямо пойдешь..\n Ой да ладно тебе, давай рулить!\n Важно:\n - перекресток, где есть светофор или регулировщик, логично, является регулируемым;\n - нерегулируемый он в случае выключения светофора или его работы в режиме мигания сигнала желтого цвета и отсут­ствия регулировщика, как ты уже мог понять;\n - всегда уступай дорогу пешеходам, да, на перекрестках тоже!\n- остановись так, чтобы светофор был в поле твоего зрения, ну а если его нет - в безопасной дистанции от тротуара и пешеходов;\n - если появилась пробка - не выезжай на перекресток, не усугубляй ситуацию!\n - уступи дорогу всем, кто завершает маневр;\n- поворачивая налево или разворачиваясь при зеле­ном сигнале основного светофора, уступи до­рогу трамваю попутного направления;\n- при повороте по стрелке светофора включенной в дополнительной секции одновременно с желтым или красным, ус­тупи дорогу транспортным средствам;\n  - при повороте по зеленой стрелке на табличке займи край­нюю правую (левую) полосу движения и уступи до­рогу транспортным средствам и пешеходам;\n - на перекрестке со свето­фором с дополнительной секцией, если ты находишься на полосе, с которой производится поворот, продолжай движение в направлении включенной стрелки, если твоя остановка препятствует повороту транспортных средств, стоящих за ним в этом ряду;"
    }
    
    @IBAction func handle5Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 5;
        topicHeader.text = "Проезд переходов и остановок"
        topic.text = "Не забывай об этом (если хочешь жить):\n что ж, начнем с того, что тебе придется оставить людей на пешеходном переходе в целости и сохранности. Уменьшай скорость, пропускай людей и просто читай дальше;\n а, точно: первое правило касается и регулируемых и нерегулируемых пешеходных переходов;\n  всегда держи дистанцию, цеплять своей тачкой нужно не в буквальном смысле пешеходов на переходе;\n посмотри на соседа. он останавливается на переходе? значит, он нормальный чувак. последуй его примеру, возможно, ты кого-то не видишь;\n пропусти слепых, подающих сигнал белой тростью;\n сколько раз ты видел ослов, останавливающихся на переходе за пробкой? не входи в их число! будь умнее и просто остановись до перехода;\n поступило требование остановиться? что уж поделать - остановись! \n впереди трамвай? уступи дорогу тем, кто в него садится, если посадка проводится с проезжей части - целее будешь :) дождись, когда все пешеходы войдут в трамвай! \n видишь опознавательный знак «Дети» на машине, ещё и проблесковые маячками оранжевого цвета и (или) аварийная световая сигнализация включена - уменьши скорость, никогда не знаешь, чего ожидать от детей."
    }
    
    
    @IBAction func handle6Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicHeader.text = "Проезд пешеходных переходов"
        topic.text = "Мы в процессе разработки этой темы!:)"
    }
    
    
    @IBAction func backToTopicList(_ sender: Any) {
        topicHeader.isHidden = true
        topic.isHidden = true
        backButton.isHidden = true
        toTest.isHidden = true
        
        
     header.isHidden = false
        b1.isHidden = false
        b2.isHidden = false
        b3.isHidden = false
        b4.isHidden = false
        b5.isHidden = false
        b6.isHidden = false
        
    }
    @IBOutlet weak var questionText: UITextView!
    
    @IBOutlet weak var arrow1: UIImageView!
    @IBOutlet weak var arrow2: UIImageView!
    @IBOutlet weak var arrow3: UIImageView!
    @IBOutlet weak var arrow4: UIImageView!
    @IBOutlet weak var arrow5: UIImageView!
    
    func setInactive() {
        arrow1.image = UIImage(named: "inactive")
        arrow2.image = UIImage(named: "inactive")
        arrow3.image = UIImage(named: "inactive")
        arrow4.image = UIImage(named: "inactive")
        arrow5.image = UIImage(named: "inactive")
    }
    
    @IBAction func button1(_ sender: Any) {
        setInactive()
        arrow1.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "Нажать кнопку старт, прочитать теорию и начать проходить тест по пункту теории. Также вы можете пройти тест из 20 случайных вопросов нажав на кнопку \"Быстрый тест\""
    }
    
    @IBAction func button2(_ sender: Any) {
        setInactive()
        arrow2.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "Регистрация нужна для статистики, то есть для  сохранения результатов теста.\n Вы также сможете поделиться своими результатами с друзьями."
    }
    
    
    @IBAction func button3(_ sender: Any) {
        setInactive()
        arrow3.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "Результат сохраняется автоматически, если вы авторизовались."
    }
    
    
    @IBAction func button4(_ sender: Any) {
        setInactive()
        arrow4.image = UIImage(named: "active")
        questionText.isEditable = false
         questionText.text = "Нажимаете на кнопку \"Поделиться\" в профиле и выбираете нужную вам соцсеть."
    }
    
    @IBAction func button5(_ sender: Any) {
        setInactive()
        arrow5.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "За прохождения теста, соответствующего пункту теории без ошибок, вы получите одну звезду. \n Звезды нельзя купить, только заработать."
    }
    
    
    @IBOutlet weak var answerPoint1: UIImageView!
    @IBOutlet weak var answerPoint2: UIImageView!
    @IBOutlet weak var answer1But: UIButton!
    @IBOutlet weak var answer2But: UIButton!
    @IBOutlet weak var questionLab: UILabel!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var finishTest1: UILabel!
    
    func startButton(){
        startTest.isHidden = true
        gifView.isHidden = false
        //view1.setAnimationRepeatCount = 1;
        answer1But.isHidden = false
        answer2But.isHidden = false
        answerPoint1.isHidden = false
        answerPoint2.isHidden = false
        questionLab.isHidden = false
        nextQuestion.isHidden = false
    }
    
    let Q1 = [
        "question" : "Въезжая на дорогу по полосе разгона, водитель должен:",
        "answer1" : "Вливаться в транспортный поток,\nуступая дорогу",
        "answer2" : "Вливаться в транспортный поток,\nдругие водители, увидев его,\nдолжны обязательно уступить\nему дорогу",
        "index" : "0"
    ]
    
    let Q2 = [
        "question" : "Разрешено ли в данном месте опасного поворота движение задним ходом?",
        "answer1" : "Разрешено при условии\nобеспечения безопасности\nдорожного движения",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q3 = [
        "question" : "Как разъедутся транспортные средства на лесной дороге?",
        "answer1" : "Белый автомобиль проедет\nпервым, синий - вторым",
        "answer2" : "Синий автомобиль проедет\nпервым, белый - вторым",
        "index" : "0"
    ]
    
    let Q4 = [
        "question" : "Как разъедутся транспортные средства в жилой зоне?",
        "answer1" : "Серый автомобиль проедет\nпервым, желтый - вторым",
        "answer2" : "Желтый автомобиль проедет\nпервым, серый - вторым",
        "index" : "0"
    ]
    
    let Q5 = [
        "question" : "Вы, водитель автомобиля, выезжая с территории жилой зоны, должны уступить дорогу:",
        "answer1" : "Автомобилю и пешеходу",
        "answer2" : "Только пешеходу",
        "index" : "0"
    ]
    
    let Q6 = [
        "question" : "Вы водитель серого автомобиля, решили перестроиться вправо. Ваши действия?",
        "answer1" : "Уступите дорогу водителю белого автомобиля и выполните маневр",
        "answer2" : "Начнете перестроение, потому\nчто имеете преимущество перед\nводителем белого автомобиля",
        "index" : "0"
    ]
    
    var currentQuestionInt = 0
    var rightQs = 0
    
    @IBAction func startTest(_ sender: Any) {
        startButton()
        let gifname = UIImage.gifImageWithName("q0")
        gifView.animationImages = gifname?.images
        gifView.animationDuration = gifname!.duration
        gifView.animationRepeatCount = 3
        gifView.startAnimating()
        gifView.image = gifname?.images?[6]
        //gifView.loadGif(name: gifname)
        questionLab.text = Q1["question"]
        answer1But.setTitle(Q1["answer1"], for: .normal)
        answer2But.setTitle(Q1["answer2"], for: .normal)
    }
    
    
    @IBAction func answer1Click(_ sender: Any) {
        answerPoint1.image = UIImage(named: "active")
        answer2But.isEnabled = false
        
        switch currentQuestionInt {
        case 0:
            let wingif = "q0-a1"
            gifView.loadGif(name: wingif)
            rightQs = rightQs + 1
            break
            
        case 1:
            let losegif = "q1-a0"
            gifView.loadGif(name: losegif)
            break
            
        case 2:
            let wingif = "q2-a1"
            gifView.loadGif(name: wingif)
            rightQs = rightQs + 1
            break
            
        case 3:
             let wingif = "q3-a0"
             gifView.loadGif(name: wingif)
             rightQs = rightQs + 1
            break
            
        case 4:
            let wingif = "q4-a1"
            gifView.loadGif(name: wingif)
            rightQs = rightQs + 1
            break
        case 5:
            let wingif = "q6-a1"
            gifView.loadGif(name: wingif)
            rightQs = rightQs + 1
            break
        default:
            break
        }
    }
    
    @IBAction func answer2Click(_ sender: Any) {
        answerPoint2.image = UIImage(named: "active")
        answer1But.isEnabled = false
        
        switch currentQuestionInt {
            
        case 0:
            let losegif = "q0-a0"
            gifView.loadGif(name: losegif)
            break
            
        case 1:
            let wingif = "q1-a1"
            gifView.loadGif(name: wingif)
            rightQs = rightQs + 1
            break
            
        case 2:
            let losegif = "q2-a0"
            gifView.loadGif(name: losegif)
            break
            
        case 3:
            let losegif = "q3-a1"
            gifView.loadGif(name: losegif)
            break
            
        case 4:
            let losegif = "q4-a0"
            gifView.loadGif(name: losegif)
            break
            
        case 5:
            let losegif = "q6-a0"
            gifView.loadGif(name: losegif)
            break
        default:
            break
        }
    }
    
    func refreshButtons() {
        answerPoint1.image = UIImage(named: "inactive")
        answerPoint2.image = UIImage(named: "inactive")
        answer1But.isEnabled = true
        answer2But.isEnabled = true
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        currentQuestionInt = currentQuestionInt + 1
        
        switch currentQuestionInt {
        case 1:
            refreshButtons()
            let gifname = "q1"
            gifView.loadGif(name: gifname)
            questionLab.text = Q2["question"]
            answer1But.setTitle(Q2["answer1"], for: .normal)
            answer2But.setTitle(Q2["answer2"], for: .normal)
            break
            
        case 2:
            refreshButtons()
            let gifname = "q2"
            gifView.loadGif(name: gifname)
            questionLab.text = Q3["question"]
            answer1But.setTitle(Q3["answer1"], for: .normal)
            answer2But.setTitle(Q3["answer2"], for: .normal)
            break
            
        case 3:
            refreshButtons()
            let gifname = "q3"
            gifView.loadGif(name: gifname)
            questionLab.text = Q4["question"]
            answer1But.setTitle(Q4["answer1"], for: .normal)
            answer2But.setTitle(Q4["answer2"], for: .normal)
            break
        case 4:
            refreshButtons()
            let gifname = "q4"
            gifView.loadGif(name: gifname)
            questionLab.text = Q5["question"]
            answer1But.setTitle(Q5["answer1"], for: .normal)
            answer2But.setTitle(Q5["answer2"], for: .normal)
            break
        case 5:
            refreshButtons()
            let gifname = "q6"
            gifView.loadGif(name: gifname)
            questionLab.text = Q6["question"]
            answer1But.setTitle(Q6["answer1"], for: .normal)
            answer2But.setTitle(Q6["answer2"], for: .normal)
            nextQuestion.setTitle("Закончить тест", for: .normal)
            break
        case 6:
            finishTest1.isHidden = false
            gifView.isHidden = true
            questionLab.isHidden = true
            answerPoint1.isHidden = true
            answerPoint2.isHidden = true
            answer1But.isHidden = true
            answer2But.isHidden = true
            nextQuestion.isHidden = true
            finishTest1.text = "Результаты вашего теста:\n" + String(rightQs) + "+"
            break
        default:
            break
        }
    }
    
    //TEST 2
    
    @IBOutlet weak var questionTest2: UILabel!
    @IBOutlet weak var gifTest2: UIImageView!
    @IBOutlet weak var point1Test2: UIImageView!
    @IBOutlet weak var point2Test2: UIImageView!
    @IBOutlet weak var answer1Test2: UIButton!
    @IBOutlet weak var answer2Test2: UIButton!
    @IBOutlet weak var nextQTest2: UIButton!
    @IBOutlet weak var resultTest2: UILabel!
    @IBOutlet weak var startTest2: UIButton!
    @IBOutlet weak var viewTest2: UIView!
    
    var currentQuestion2 = 7
    var rightQs2 = 0
    
    func showTest2() {
        startTest2.isHidden = true
        questionTest2.isHidden = false
        gifTest2.isHidden = false
        viewTest2.isHidden = false
        point1Test2.isHidden = false
        point2Test2.isHidden = false
        answer1Test2.isHidden = false
        answer2Test2.isHidden = false
        nextQTest2.isHidden = false
    }
    
    @IBAction func startTest2(_ sender: Any) {
        showTest2()
        let gifname = "q7"
        gifTest2.loadGif(name: gifname)
        questionTest2.text = Q7["question"]
        answer1Test2.setTitle(Q7["answer1"], for: .normal)
        answer2Test2.setTitle(Q7["answer2"], for: .normal)
    }
    
    let Q7 = [
        "question" : "Разрешен ли обгон водителю красного автомобиля в этой ситуации?",
        "answer1" : "Разрешен",
        "answer2" : "Запрещен",
        "index" : "1"
    ]
    
    let Q8 = [
        "question" : "Разрешено ли водителю белого автомобиля выполнить обгон в этой ситуации?",
        "answer1" : "Разрешено",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q9 = [
        "question" : "Разрешен ли обгон в этой ситуации?",
        "answer1" : "Разрешен, если скорость обгоняемого автомобиля составляет менее 30 км/ч",
        "answer2" : "Запрещен",
        "index" : "1"
    ]
    
    let Q10 = [
        "question" : "Разрешено ли водителю белого автомобиля выполнить обгон трактора в данной ситуации?",
        "answer1" : "Разрешено, при этом он должен убедиться в безопасности маневра",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q11 = [
        "question" : "Как должен поступить водитель синего автомобиля, который движется прямо, в данной ситуации?",
        "answer1" : "Остановиться перед перекрестком и дождаться, пока фиолетовый автомобиль повернет налево.",
        "answer2" : "Объехать фиолетовый автомобиль справа, обеспечив безопасность движения",
        "index" : "1"
    ]
    
    @IBAction func answer1Test2(_ sender: Any) {
        point1Test2.image = UIImage(named: "active")
        answer2Test2.isEnabled = false
        
        switch currentQuestion2 {
        case 7:
            let losegif = "q7-a1"
            gifTest2.loadGif(name: losegif)
            break
            
        case 8:
            let losegif = "q8-a1"
            gifTest2.loadGif(name: losegif)
            break
            
        case 9:
            let losegif = "q9-a1"
            gifTest2.loadGif(name: losegif)
            break
            
        case 10:
             let losegif = "q10-a1"
             gifTest2.loadGif(name: losegif)
            break
            
        case 11:
            let losegif = "q11-a0"
            gifTest2.loadGif(name: losegif)
            break
       
        default:
            break
        }
    }
    
    @IBAction func answer2Test2(_ sender: Any) {
        point2Test2.image = UIImage(named: "active")
        answer1Test2.isEnabled = false
        
        switch currentQuestion2 {
         case 7:
             let wingif = "q7-a0"
             gifTest2.loadGif(name: wingif)
             rightQs2 = rightQs2 + 1
             break
             
         case 8:
            let wingif = "q8-a0"
             gifTest2.loadGif(name: wingif)
             rightQs2 = rightQs2 + 1
             break
             
         case 9:
             let wingif = "q9-a0"
             gifTest2.loadGif(name: wingif)
             rightQs2 = rightQs2 + 1
             break
             
         case 10:
              let wingif = "q10-a0"
              gifTest2.loadGif(name: wingif)
              rightQs2 = rightQs2 + 1
             break
             
         case 11:
             let wingif = "q11-a1"
             gifTest2.loadGif(name: wingif)
             rightQs2 = rightQs2 + 1
             break
        
         default:
             break
         }
    }
    
    func refreshButtons2() {
        point1Test2.image = UIImage(named: "inactive")
        point2Test2.image = UIImage(named: "inactive")
        answer1Test2.isEnabled = true
        answer2Test2.isEnabled = true
    }
    
    
    @IBAction func nextQTest2(_ sender: Any) {
        currentQuestion2 = currentQuestion2 + 1
        
        switch currentQuestion2 {
        case 8:
            refreshButtons2()
            let gifname = "q8"
            gifTest2.loadGif(name: gifname)
            questionTest2.text = Q8["question"]
            answer1Test2.setTitle(Q8["answer1"], for: .normal)
            answer2Test2.setTitle(Q8["answer2"], for: .normal)
            break
            
        case 9:
            refreshButtons2()
            let gifname = "q9"
            gifTest2.loadGif(name: gifname)
            questionTest2.text = Q9["question"]
            answer1Test2.setTitle(Q9["answer1"], for: .normal)
            answer2Test2.setTitle(Q9["answer2"], for: .normal)
            break
        case 10:
            refreshButtons2()
            let gifname = "q10"
            gifTest2.loadGif(name: gifname)
            questionTest2.text = Q10["question"]
            answer1Test2.setTitle(Q10["answer1"], for: .normal)
            answer2Test2.setTitle(Q10["answer2"], for: .normal)
            break
        case 11:
            refreshButtons2()
            let gifname = "q11"
            gifTest2.loadGif(name: gifname)
            questionTest2.text = Q11["question"]
            answer1Test2.setTitle(Q11["answer1"], for: .normal)
            answer2Test2.setTitle(Q11["answer2"], for: .normal)
            nextQTest2.setTitle("Закончить тест", for: .normal)
            break
        case 12:
            questionTest2.isHidden = true
            gifTest2.isHidden = true
            point1Test2.isHidden = true
            point2Test2.isHidden = true
            answer1Test2.isHidden = true
            answer2Test2.isHidden = true
            nextQTest2.isHidden = true
            viewTest2.isHidden = true
            resultTest2.isHidden = false
            resultTest2.text = "Результаты вашего теста:\n" + String(rightQs2) + "+"
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //gifView.animationRepeatCount = 1;
    }
}

