.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$o0w_BKwM6S_Y0CjGO8bjwU1Pwq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$o0w_BKwM6S_Y0CjGO8bjwU1Pwq4;->f$0:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$o0w_BKwM6S_Y0CjGO8bjwU1Pwq4;->f$0:Landroid/widget/CheckBox;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$showBatterySwellingLowTempPopup$10(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
