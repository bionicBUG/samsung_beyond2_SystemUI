.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;->f$0:I

    iput p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;->f$1:I

    iput-wide p3, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;->f$0:I

    iget v1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;->f$1:I

    iget-wide v2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$CQxMkzSwMywDbmEbAZZBurLHURI;->f$2:J

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateLevelByProgressBar$27(IIJLcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
