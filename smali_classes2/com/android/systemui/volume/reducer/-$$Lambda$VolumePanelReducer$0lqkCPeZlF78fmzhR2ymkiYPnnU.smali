.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0lqkCPeZlF78fmzhR2ymkiYPnnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0lqkCPeZlF78fmzhR2ymkiYPnnU;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$0lqkCPeZlF78fmzhR2ymkiYPnnU;->f$0:Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$applyImportance$17(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
