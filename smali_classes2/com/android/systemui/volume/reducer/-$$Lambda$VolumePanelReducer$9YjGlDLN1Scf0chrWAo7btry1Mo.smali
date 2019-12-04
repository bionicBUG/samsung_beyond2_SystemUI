.class public final synthetic Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9YjGlDLN1Scf0chrWAo7btry1Mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9YjGlDLN1Scf0chrWAo7btry1Mo;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/reducer/-$$Lambda$VolumePanelReducer$9YjGlDLN1Scf0chrWAo7btry1Mo;->f$0:Ljava/util/List;

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->lambda$mergeRemoteStream$13(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method
