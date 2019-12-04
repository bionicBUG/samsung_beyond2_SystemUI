.class Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;
.super Ljava/lang/Object;
.source "CopyablePreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;->this$0:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;->this$0:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;->this$0:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    invoke-static {p1, p0}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;->copyPreference(Landroid/content/Context;Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;)V

    const/4 p0, 0x1

    return p0
.end method
