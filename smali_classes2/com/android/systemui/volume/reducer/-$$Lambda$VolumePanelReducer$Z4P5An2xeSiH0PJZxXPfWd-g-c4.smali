.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/samsung/systemui/splugins/volume/VolumeState;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field private final synthetic f$3:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

.field private final synthetic f$4:Z

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$0:Lcom/samsung/systemui/splugins/volume/VolumeState;

    iput-object p2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput-object p4, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$3:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    iput-boolean p5, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$4:Z

    iput p6, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$5:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$0:Lcom/samsung/systemui/splugins/volume/VolumeState;

    iget-object v1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$2:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget-object v3, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$3:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    iget-boolean v4, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$4:Z

    iget v5, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$Z4P5An2xeSiH0PJZxXPfWd-g-c4;->f$5:I

    move-object v6, p1

    check-cast v6, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$updateVolumeStates$23(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/lang/String;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p0

    return-object p0
.end method
