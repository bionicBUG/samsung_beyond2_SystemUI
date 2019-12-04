.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistManager$ieTnAbTh5F1u6TOx6fg_HHFx9g8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/assist/AssistManager;

.field private final synthetic f$1:Landroid/widget/ArrayAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/widget/ArrayAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$ieTnAbTh5F1u6TOx6fg_HHFx9g8;->f$0:Lcom/android/systemui/assist/AssistManager;

    iput-object p2, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$ieTnAbTh5F1u6TOx6fg_HHFx9g8;->f$1:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$ieTnAbTh5F1u6TOx6fg_HHFx9g8;->f$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$ieTnAbTh5F1u6TOx6fg_HHFx9g8;->f$1:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistanceAppSettingAlertDialog$1$AssistManager(Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
