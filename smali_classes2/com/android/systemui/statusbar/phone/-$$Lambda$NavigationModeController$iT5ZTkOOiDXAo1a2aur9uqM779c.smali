.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->lambda$updateCurrentInteractionMode$0(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
