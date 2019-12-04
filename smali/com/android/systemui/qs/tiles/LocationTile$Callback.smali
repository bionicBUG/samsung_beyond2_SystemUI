.class final Lcom/android/systemui/qs/tiles/LocationTile$Callback;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$1;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    :cond_0
    return-void
.end method
