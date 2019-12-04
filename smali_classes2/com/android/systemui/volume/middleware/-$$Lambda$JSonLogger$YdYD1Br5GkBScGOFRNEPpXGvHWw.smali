.class public final synthetic Lcom/android/systemui/volume/middleware/-$$Lambda$JSonLogger$YdYD1Br5GkBScGOFRNEPpXGvHWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/middleware/JSonLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/middleware/JSonLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$JSonLogger$YdYD1Br5GkBScGOFRNEPpXGvHWw;->f$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/-$$Lambda$JSonLogger$YdYD1Br5GkBScGOFRNEPpXGvHWw;->f$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->lambda$applyState$3$JSonLogger(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method
