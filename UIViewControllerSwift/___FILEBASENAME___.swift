//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    // MARK: - Public Property ⚡️
    
    
    // MARK: - Pirvate Property ⚡️
    
    
    // MARK: - Life Cycle ⚡️
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initData()
        
        initUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    // MARK: - initData ⚡️
    /// 初始化数据
    private func initData() {
        
    }

    // MARK: - initUI ⚡️
    /// 初始化UI界面
    private func initUI() {
        
        initTableView()
    }
    
    private func initTableView() {
        kTableView = tableViewConfig(self, self)
        registerCell(kTableView, GFAttentionNewListCell.self)
        configRefreshing(kTableView, target: self, headerRef: #selector(headerRefreshing), footerRef: #selector(footerRefreshing))
        addSubView(kTableView)
    }
    
    // MARK: - override Methods ⚡️
    override func footerRefreshing() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime(uptimeNanoseconds: 4)) {
            self.kTableView.mj_footer.state = .noMoreData
            self.endRefreshing()
        }
    }
    override func headerRefreshing() {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime(uptimeNanoseconds: 1)) {

            self.initData()
            self.kTableView.reloadData()
            self.endRefreshing()
        }
    }
    
    override func endRefreshing() {
        kTableView.mj_footer.endRefreshing()
        kTableView.mj_header.endRefreshing()
    }
    // MARK: - Public Methods ⚡️
    
    
    // MARK: - Private Methods ⚡️
    fileprivate func requestData() {
        
    }
    
    
    // MARK: - Lazy 懒加载 ⚡️
    
    
    // MARK: - Deinit ⚡️
    deinit {
         print("\(___FILEBASENAMEASIDENTIFIER___.self) - 释放")
    }

}


// MARK: - UITableViewDataSource, UITableViewDelegate ⚡️
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource ⚡️
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell = UICollectionViewCell()
        return cell
    }
}

// MARK: - extension ⚡️
extension ___FILEBASENAMEASIDENTIFIER___ {
    
}
