.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;

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

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->lambda$updateCurrentInteractionMode$1(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
