.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
.super Ljava/lang/Object;
.source "MinimizeContainerItem.java"


# instance fields
.field protected mAnimationCompleted:Z

.field protected mDescription:Ljava/lang/String;

.field protected mIconLoadCompleted:Z

.field private mIconView:Landroid/widget/ImageView;

.field protected mPackageName:Ljava/lang/String;

.field private mPublishCompleted:Z

.field private mRealActivity:Landroid/content/ComponentName;

.field protected mShowingIcon:Landroid/graphics/drawable/Drawable;

.field private mTaskId:I

.field private mUserId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "undefined"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mDescription:Ljava/lang/String;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mTaskId:I

    .line 29
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mUserId:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconLoadCompleted:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;IZ)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "undefined"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mDescription:Ljava/lang/String;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mTaskId:I

    .line 29
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mUserId:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconLoadCompleted:Z

    .line 43
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mTaskId:I

    .line 45
    iput p4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mUserId:I

    .line 46
    iput-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mRealActivity:Landroid/content/ComponentName;

    .line 47
    iput-boolean p5, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    return-void
.end method


# virtual methods
.method animationCompleted()V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method getRealActivity()Landroid/content/ComponentName;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mRealActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method getShowingIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getTaskId()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mTaskId:I

    return p0
.end method

.method getUserId()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mUserId:I

    return p0
.end method

.method iconLoadCompleted()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconLoadCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconLoadCompleted:Z

    :cond_0
    return-void
.end method

.method isPublishCompleted()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    return p0
.end method

.method loadShowingIcon(Landroid/content/Context;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerIconLoader;->getShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->setShowingIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method publishCompleted()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    :cond_0
    return-void
.end method

.method readyToPublishItem()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mAnimationCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconLoadCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mDescription:Ljava/lang/String;

    return-void
.end method

.method setIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method setShowingIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinimizeContainerItem {mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mRealActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unsetIconLoadCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mIconLoadCompleted:Z

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->mPublishCompleted:Z

    return-void
.end method
