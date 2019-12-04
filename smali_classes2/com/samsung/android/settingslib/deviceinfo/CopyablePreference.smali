.class public Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;
.super Landroidx/preference/Preference;
.source "CopyablePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static copyPreference(Landroid/content/Context;Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;)V
    .locals 1

    const-string v0, "clipboard"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;->getCopyableText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p0}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;->showCopyCompleteToast(Landroid/content/Context;)V

    return-void
.end method

.method public static showCopyCompleteToast(Landroid/content/Context;)V
    .locals 2

    .line 53
    sget v0, Lcom/android/settingslib/R$string;->sec_device_info_copied:I

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 0

    .line 43
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 29
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 31
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 33
    new-instance p1, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference$1;-><init>(Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
