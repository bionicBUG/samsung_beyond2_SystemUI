.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$EoslMKqSmeRiA_6laiBGWH6kMyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/Dependency;

.field private final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/Dependency;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Dependency$EoslMKqSmeRiA_6laiBGWH6kMyw;->f$0:Lcom/android/systemui/Dependency;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$Dependency$EoslMKqSmeRiA_6laiBGWH6kMyw;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$Dependency$EoslMKqSmeRiA_6laiBGWH6kMyw;->f$0:Lcom/android/systemui/Dependency;

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$Dependency$EoslMKqSmeRiA_6laiBGWH6kMyw;->f$1:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$8$Dependency(Landroid/content/res/Configuration;)V

    return-void
.end method
