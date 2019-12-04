.class public final synthetic Lcom/android/systemui/assist/-$$Lambda$AssistManager$K8_pO6PCEkFVnkoZ3U2iqSXh99A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;

.field private final synthetic f$1:Landroid/widget/ArrayAdapter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$K8_pO6PCEkFVnkoZ3U2iqSXh99A;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$K8_pO6PCEkFVnkoZ3U2iqSXh99A;->f$1:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$K8_pO6PCEkFVnkoZ3U2iqSXh99A;->f$0:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/assist/-$$Lambda$AssistManager$K8_pO6PCEkFVnkoZ3U2iqSXh99A;->f$1:Landroid/widget/ArrayAdapter;

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->lambda$showAssistanceAppSettingAlertDialog$0(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
