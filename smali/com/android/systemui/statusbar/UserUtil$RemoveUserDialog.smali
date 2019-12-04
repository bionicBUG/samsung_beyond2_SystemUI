.class final Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/UserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoveUserDialog"
.end annotation


# instance fields
.field private final mUserId:I

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p0, p0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->removeUserId(I)V

    :goto_0
    return-void
.end method
