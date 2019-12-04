.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
.super Ljava/lang/Object;
.source "IndicatorGardenModel.java"


# instance fields
.field private mCenterContainerMaxWidth:I

.field private mHeight:I

.field private mIsCameraTopMargin:Z

.field private mLeftContainerMaxWidth:I

.field private mLeftPadding:I

.field private mRightContainerMaxWidth:I

.field private mRightPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftContainerMaxWidth:I

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mCenterContainerMaxWidth:I

    .line 26
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightContainerMaxWidth:I

    return-void
.end method


# virtual methods
.method public getMaxWidthCenterContainer()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mCenterContainerMaxWidth:I

    return p0
.end method

.method public getMaxWidthLeftContainer()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftContainerMaxWidth:I

    return p0
.end method

.method public getMaxWidthRightContainer()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightContainerMaxWidth:I

    return p0
.end method

.method public getPaddingLeft()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftPadding:I

    return p0
.end method

.method public getPaddingRight()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightPadding:I

    return p0
.end method

.method public getTotalHeight()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mHeight:I

    return p0
.end method

.method public isCameraTopMargin()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mIsCameraTopMargin:Z

    return p0
.end method

.method public isEqual(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 33
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftPadding:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingLeft()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 34
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftContainerMaxWidth:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthLeftContainer()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    .line 35
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mCenterContainerMaxWidth:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthCenterContainer()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    .line 36
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightContainerMaxWidth:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthRightContainer()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v0

    .line 37
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightPadding:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingRight()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v0

    .line 38
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getTotalHeight()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v0

    .line 39
    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mIsCameraTopMargin:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin()Z

    move-result p1

    if-eq p0, p1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public setCameraTopMargin(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mIsCameraTopMargin:Z

    return-void
.end method

.method public setMaxWidthCenterContainer(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mCenterContainerMaxWidth:I

    return-void
.end method

.method public setMaxWidthLeftContainer(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftContainerMaxWidth:I

    return-void
.end method

.method public setMaxWidthRightContainer(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightContainerMaxWidth:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftPadding:I

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightPadding:I

    return-void
.end method

.method public setTotalHeight(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IndicatorGardenModel)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", lc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mLeftContainerMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mCenterContainerMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightContainerMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mRightPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->mHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
