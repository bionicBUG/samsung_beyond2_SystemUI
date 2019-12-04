.class Lcom/android/keyguard/EmergencyButton$Samsung321Task;
.super Landroid/os/AsyncTask;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Samsung321Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/keyguard/EmergencyButton$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->access$900(Lcom/android/keyguard/EmergencyButton;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 511
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/EmergencyButton;->access$1002(Lcom/android/keyguard/EmergencyButton;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 511
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
