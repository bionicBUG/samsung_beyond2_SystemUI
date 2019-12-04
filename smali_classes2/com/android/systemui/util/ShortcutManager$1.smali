.class Lcom/android/systemui/util/ShortcutManager$1;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "lock_application_shortcut"

    .line 148
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto :goto_0

    :cond_0
    const-string v0, "set_shortcuts_mode"

    .line 150
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$000(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->access$002(Lcom/android/systemui/util/ShortcutManager;Z)Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemSettingsChanged oldShortcutVisibleForMDM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutVisibleForMDM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    .line 155
    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->access$000(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutManager"

    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$000(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 158
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto :goto_0

    :cond_1
    const-string v0, "current_sec_appicon_theme_package"

    .line 160
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$1;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_2
    :goto_0
    return-void
.end method
