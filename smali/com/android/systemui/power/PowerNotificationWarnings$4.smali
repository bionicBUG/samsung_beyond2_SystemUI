.class Lcom/android/systemui/power/PowerNotificationWarnings$4;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowOrIncompleteChargerConnectionInfoPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field final synthetic val$chargerConnectionInfoDoNotShow:Ljava/lang/String;

.field final synthetic val$chargerConnectionInfoSharedPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->val$chargerConnectionInfoSharedPrefs:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->val$chargerConnectionInfoDoNotShow:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1302
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1303
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->val$chargerConnectionInfoSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1304
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->val$chargerConnectionInfoDoNotShow:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
