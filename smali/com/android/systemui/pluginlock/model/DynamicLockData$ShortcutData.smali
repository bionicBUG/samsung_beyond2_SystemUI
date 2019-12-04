.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutData"
.end annotation


# instance fields
.field mBottomMargin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottom"
    .end annotation
.end field

.field mFloatingShortcutX:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "floatingShortcutX"
    .end annotation
.end field

.field mFloatingShortcutY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "floatingShortcutY"
    .end annotation
.end field

.field mImageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_size"
    .end annotation
.end field

.field mIsFloatingShortuct:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "floatingShortcutEnable"
    .end annotation
.end field

.field mShortcutInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcutInfo"
    .end annotation
.end field

.field mShortcutVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field mSideMargin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "side"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 785
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 699
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 790
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 791
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    .line 792
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    .line 793
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getShortcutVisibility()Ljava/lang/Integer;
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mBottomMargin:Ljava/lang/Integer;

    return-void
.end method

.method public setFloatingShortcutEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mIsFloatingShortuct:Ljava/lang/Boolean;

    return-void
.end method

.method public setFloatingShortcutX(Ljava/lang/Integer;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mFloatingShortcutX:Ljava/lang/Integer;

    return-void
.end method

.method public setFloatingShortcutY(Ljava/lang/Integer;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mFloatingShortcutY:Ljava/lang/Integer;

    return-void
.end method

.method public setImageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mImageSize:Ljava/lang/Integer;

    return-void
.end method

.method public setShortcutInfo(Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutInfo:Ljava/lang/String;

    return-void
.end method

.method public setShortcutVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mShortcutVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setSideMargin(Ljava/lang/Integer;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->mSideMargin:Ljava/lang/Integer;

    return-void
.end method
