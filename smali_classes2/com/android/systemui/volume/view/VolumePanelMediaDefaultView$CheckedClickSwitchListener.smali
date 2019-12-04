.class final Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;
.super Ljava/lang/Object;
.source "VolumePanelMediaDefaultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckedClickSwitchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;->this$0:Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;-><init>(Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 137
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView$CheckedClickSwitchListener;->this$0:Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_MEDIA_VOLUME_DEFAULT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 138
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumePanelMediaDefaultView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
