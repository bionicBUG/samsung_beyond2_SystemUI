.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;

    invoke-direct {v0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;

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

    invoke-virtual {p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onSessionStarted()V

    return-void
.end method
