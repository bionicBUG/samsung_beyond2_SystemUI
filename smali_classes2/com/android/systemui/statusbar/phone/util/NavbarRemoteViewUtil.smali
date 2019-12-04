.class public Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;
.super Ljava/lang/Object;
.source "NavbarRemoteViewUtil.java"


# instance fields
.field private mDarkIntensity:Ljava/lang/Float;

.field private mIsContextualExceptIMEButtonVisible:Z

.field private mIsGameMode:Z

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mRemoteViewIcon:Landroid/widget/RemoteViews;

.field private mRemoteViewPosition:I

.field private mRemoteViewPriority:I

.field private mRemoteViewRequestClass:Ljava/lang/String;

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setGameMode()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewRequestClass:Ljava/lang/String;

    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewIcon:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mIsGameMode:Z

    return-void
.end method


# virtual methods
.method public getDarkIntensity()Ljava/lang/Float;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mDarkIntensity:Ljava/lang/Float;

    return-object p0
.end method

.method public getLeftRemoteViewContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewPosition:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewPriority:I

    return p0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewIcon:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getRequestClass()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewRequestClass:Ljava/lang/String;

    return-object p0
.end method

.method public getRightRemoteViewContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public isContextualButtonVisible()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mIsContextualExceptIMEButtonVisible:Z

    return p0
.end method

.method public isGameMode()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mIsGameMode:Z

    return p0
.end method

.method public setContextualButtonVisible(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mIsContextualExceptIMEButtonVisible:Z

    return-void
.end method

.method public setDarkIntensity(Ljava/lang/Float;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mDarkIntensity:Ljava/lang/Float;

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewRequestClass:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewIcon:Landroid/widget/RemoteViews;

    .line 43
    iput p3, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewPosition:I

    .line 44
    iput p4, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewPriority:I

    .line 45
    iget p1, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRemoteViewPosition:I

    if-nez p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->setGameMode()V

    :cond_0
    return-void
.end method

.method public setRemoteViewContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/util/NavbarRemoteViewUtil;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    return-void
.end method
