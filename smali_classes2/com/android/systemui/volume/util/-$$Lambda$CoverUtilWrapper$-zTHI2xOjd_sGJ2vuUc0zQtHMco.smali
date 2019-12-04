.class public final synthetic Lcom/android/systemui/volume/util/-$$Lambda$CoverUtilWrapper$-zTHI2xOjd_sGJ2vuUc0zQtHMco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/-$$Lambda$CoverUtilWrapper$-zTHI2xOjd_sGJ2vuUc0zQtHMco;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/-$$Lambda$CoverUtilWrapper$-zTHI2xOjd_sGJ2vuUc0zQtHMco;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/util/CoverUtilWrapper;->lambda$addListener$0(Ljava/util/function/Consumer;Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method
