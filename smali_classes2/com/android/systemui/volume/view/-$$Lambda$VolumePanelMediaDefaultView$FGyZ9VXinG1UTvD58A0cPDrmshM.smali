.class public final synthetic Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;

.field private final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;->f$0:Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;->f$0:Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/-$$Lambda$VolumePanelMediaDefaultView$FGyZ9VXinG1UTvD58A0cPDrmshM;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->lambda$dispatch$0$VolumePanelMediaDefaultView(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method
