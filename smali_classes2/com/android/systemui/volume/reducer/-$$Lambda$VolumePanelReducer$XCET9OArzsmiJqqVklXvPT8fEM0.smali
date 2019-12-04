.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILcom/samsung/systemui/splugins/volume/VolumePanelState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput p3, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;->f$0:I

    iget-object v1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$XCET9OArzsmiJqqVklXvPT8fEM0;->f$2:I

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateLevelByIconToggle$28(ILcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
