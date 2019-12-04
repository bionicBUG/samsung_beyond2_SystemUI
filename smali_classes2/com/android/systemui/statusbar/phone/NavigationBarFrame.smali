.class public Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.super Landroid/widget/FrameLayout;
.source "NavigationBarFrame.java"


# instance fields
.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 73
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 76
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 75
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NavigationBarFrame"

    const-string p1, "NavigationBar setVisibility(VISIBLE) Ignored! NavigationBar is GONE by Knox"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_VIS_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VISIBILITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 86
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    :cond_1
    return-void
.end method
