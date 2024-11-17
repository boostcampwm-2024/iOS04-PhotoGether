import UIKit
import DesignSystem

class PhotoHostBottomView: UIView {
    private let filterButton = UIButton()
    private let switchCameraButton = UIButton()
    private let cameraButton = CameraButton()
    
    // MARK: init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        setupConstraints()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        [filterButton, switchCameraButton, cameraButton].forEach {
            addSubview($0)
        }
    }
    
    private func setupConstraints() {
        filterButton.snp.makeConstraints {
            $0.height.width.equalTo(40)
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(53)
        }
        
        switchCameraButton.snp.makeConstraints {
            $0.height.width.equalTo(40)
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(53)
        }
        
        cameraButton.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.width.equalTo(CameraButton.Constants.buttonSize)
        }
    }
    
    private func configureUI() {
        filterButton.setImage(PTGImage.filterIcon.image, for: .normal)
        
        switchCameraButton.setImage(PTGImage.switchIcon.image, for: .normal)
    }
}
