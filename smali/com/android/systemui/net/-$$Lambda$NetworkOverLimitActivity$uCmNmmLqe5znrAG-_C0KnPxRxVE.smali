.class public final synthetic Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

.field private final synthetic f$1:Landroid/net/NetworkTemplate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    iput-object p2, p0, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;->f$1:Landroid/net/NetworkTemplate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    iget-object p0, p0, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;->f$1:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/net/NetworkOverLimitActivity;->lambda$onCreate$1$NetworkOverLimitActivity(Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V

    return-void
.end method
