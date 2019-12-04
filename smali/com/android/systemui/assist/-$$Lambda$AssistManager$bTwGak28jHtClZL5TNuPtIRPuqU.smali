.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistManager$bTwGak28jHtClZL5TNuPtIRPuqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$bTwGak28jHtClZL5TNuPtIRPuqU;->f$0:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$bTwGak28jHtClZL5TNuPtIRPuqU;->f$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistanceAppSettingAlertDialog$2$AssistManager(Landroid/content/DialogInterface;)V

    return-void
.end method
