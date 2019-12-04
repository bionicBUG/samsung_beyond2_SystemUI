.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;

    invoke-direct {v0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onSessionEnded()V

    return-void
.end method
