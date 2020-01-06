import UIKit

class SettingViewController: BaseViewController {

    @IBOutlet weak var settingTableView: UITableView!
    
    let settingModel = SettingModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setNavigationItemTitle(style: .title, title: "設定")
        
        self.settingTableView.dataSource = self
        self.settingTableView.delegate = self
    }
    
    //MARK: Set view.
    override func setView() {
    }
}

extension SettingViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.settingModel.tableHeader.count
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.settingModel.tableHeader[section]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.settingTableView.dequeueReusableCell(withIdentifier: "FontSizeCell", for: indexPath)
        return cell
    }
    
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    
        guard let header = view as? UITableViewHeaderFooterView else {
            return
        }
        header.textLabel?.textColor = UIColor(named: "App_Main_Color")
        header.textLabel?.font = UIFont(name: "PingFangTC-Medium", size: 18)
        header.textLabel?.frame = header.frame
        header.textLabel?.textAlignment = .left
    }
}
