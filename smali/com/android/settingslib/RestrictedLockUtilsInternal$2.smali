.class Lcom/android/settingslib/RestrictedLockUtilsInternal$2;
.super Ljava/lang/Object;
.source "RestrictedLockUtilsInternal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$context:Landroid/content/Context;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 722
    iget-object p1, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
