.class public final synthetic Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->lambda$getPButtonClickListener$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
