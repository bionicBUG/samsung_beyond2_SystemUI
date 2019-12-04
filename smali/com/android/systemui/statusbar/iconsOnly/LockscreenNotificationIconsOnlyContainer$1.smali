.class Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateStyle(ILandroid/app/SemWallpaperColors;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isWhiteWallpaper:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;Landroid/os/Handler;Z)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->val$handler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->val$isWhiteWallpaper:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
