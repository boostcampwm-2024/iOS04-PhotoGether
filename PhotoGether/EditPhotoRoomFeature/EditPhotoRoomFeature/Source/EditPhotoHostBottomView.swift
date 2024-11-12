import UIKit
import DesignSystem

final class EditPhotoHostBottomView: UIView {
    private let stackView = UIStackView()
    private let frameButton = PTGGrayButton(type: .frame)
    private let nextButton = UIButton()
    private let stickerButton = PTGGrayButton(type: .sticker)
    
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
        [stackView, nextButton].forEach {
            addSubview($0)
        }

        [frameButton, stickerButton].forEach {
            stackView.addArrangedSubview($0)
        }
    }
    
    private func setupConstraints() {
        stackView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(32)
            $0.trailing.equalTo(nextButton.snp.leading).offset(-16)
            $0.verticalEdges.equalToSuperview().inset(14)
        }
        
        nextButton.snp.makeConstraints {
            $0.verticalEdges.equalTo(stackView.snp.verticalEdges)
            $0.width.equalTo(nextButton.snp.height)
            $0.trailing.equalToSuperview().inset(32)
        }
    }
    
    // TODO: nextButton background primaryColor로 변경 예정
    private func configureUI() {
        backgroundColor = .clear
        
        stackView.spacing = 16
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        nextButton.backgroundColor = .green
        nextButton.layer.cornerRadius = 8
        nextButton.setImage(UIImage.load(name: "chevronRightBlack"), for: .normal)
    }
}
