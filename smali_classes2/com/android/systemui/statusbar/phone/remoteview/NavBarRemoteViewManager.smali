.class public Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;
.super Ljava/lang/Object;
.source "NavBarRemoteViewManager.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mLeftContainer:Landroid/widget/LinearLayout;

.field private mLeftViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;",
            ">;"
        }
    .end annotation
.end field

.field mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mPadding:I

.field private mRightContainer:Landroid/widget/LinearLayout;

.field private mRightViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const/4 p1, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->sec_navigation_bar_remoteview_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mPadding:I

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private addRemoteViewToList(ILcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)V
    .locals 1

    .line 141
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->removeRemoteViewToList(ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 146
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyRemoteIconTint(Landroid/view/View;)V
    .locals 5

    .line 49
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 50
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    cmpl-double p0, v0, v3

    if-lez p0, :cond_1

    const p0, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_1
    const p0, 0x3f733333    # 0.95f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private getNavbarRemoteView(I)Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;->INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$fHywZmqXaczM7LRjSOVaAw4uMzM;

    .line 173
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 175
    invoke-virtual {p1, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$cLjeEt5Oku8oQC55xdsPVN6iQgE;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$cLjeEt5Oku8oQC55xdsPVN6iQgE;-><init>(I)V

    .line 178
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$Em3PqLj-wKyBRTKo4qBoAPksmvA;->INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$Em3PqLj-wKyBRTKo4qBoAPksmvA;

    .line 179
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 181
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;->INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$sYl-2rWc-bGwqtfG_VtSBwvFezA;

    .line 182
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$7l4kPWZshV3xGV2ZyEz4I5vT6-w;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$7l4kPWZshV3xGV2ZyEz4I5vT6-w;-><init>(I)V

    .line 187
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$O_wsnpP8uEsg8SgeaY0LdRsshn4;->INSTANCE:Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$O_wsnpP8uEsg8SgeaY0LdRsshn4;

    .line 188
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    :cond_1
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$getNavbarRemoteView$0(Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)I
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getPriority()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getNavbarRemoteView$1(ILcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)Z
    .locals 0

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getPriority()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getNavbarRemoteView$3(Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)I
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getPriority()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getNavbarRemoteView$4(ILcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)Z
    .locals 0

    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getPriority()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeRemoteViewToList(ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 160
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getRequestClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setRemoteViewContainerLayout(I)V
    .locals 2

    .line 195
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mPadding:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mPadding:I

    invoke-virtual {p1, p0, v1, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 197
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mPadding:I

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 198
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mPadding:I

    invoke-virtual {p1, v1, p0, v1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateRemoteViewContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    .line 207
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public applyDarkIntensity(F)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getDarkIntensity()F
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public isLeftRemoteViewExist()Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isRightRemoteViewExist()Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNavigationBarShortcut() requestClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBarRemoteViewManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 78
    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->addRemoteViewToList(ILcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->removeRemoteViewToList(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public update(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 2

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    .line 100
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->setRemoteViewContainerLayout(I)V

    .line 103
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_1

    if-ne p1, v0, :cond_1

    .line 104
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object p2

    .line 105
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p1, v0, :cond_2

    .line 106
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->getNavbarRemoteView(I)Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    move-result-object p1

    :goto_1
    const/4 p3, 0x4

    if-eqz p2, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->add(Landroid/widget/LinearLayout;)V

    goto :goto_2

    .line 111
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 112
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    if-eqz p1, :cond_4

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;->add(Landroid/widget/LinearLayout;)V

    goto :goto_3

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public updateRightRemoteViewVisibility(ZI)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 128
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mLeftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
