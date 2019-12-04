.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;

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

    check-cast p1, Lcom/android/systemui/statusbar/IndicationItem;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->lambda$removeAllIndications$2(Lcom/android/systemui/statusbar/IndicationItem;)Z

    move-result p0

    return p0
.end method
