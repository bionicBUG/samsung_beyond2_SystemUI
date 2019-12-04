.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/CheckBox;

.field private final synthetic f$1:Landroid/content/SharedPreferences;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;->f$0:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;->f$0:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;->f$1:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$A7zbkkpVxI2VwfdiXoSwC2bnIsA;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$showBatterySwellingLowTempPopup$11(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
