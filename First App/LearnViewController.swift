//
//  LearnViewController.swift
//  First App
//
//  Created by Diogo Amaral on 5/9/15.
//  Copyright (c) 2015 Diogo Amaral. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController {
    @IBOutlet weak var dialogView: DesignableView!
    @IBOutlet weak var bookImageView: SpringImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // DidLoad carrega mto rápido. Não da nem pra ver carregar a animação
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        // dialogView.animate()
        // DidAppear é um pouco mais lento mas tem delay
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        dialogView.animate()
        // WillAppear acontece depois do DidAppear sem delay
        // para ter colocado a animação aqui tive que deixar o autostart 'default' e o autohide 'on'
    }
    
    @IBAction func learnButtonDidTouch(sender: AnyObject) {
        bookImageView.animation = "pop"
        bookImageView.animate()
    }

    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "fall"
        // aqui em baixo eu estou fazendo primeiro a animação acontecer para depois sair da tela.. antes saia da tela pelo link que fizemos do button com o exit no controller dentro do historyBoard. Para isso precisamos remover de lá.
        dialogView.animateNext{
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
}
