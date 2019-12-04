.class public Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;
.super Ljava/lang/Object;
.source "IntentResultItemPayload.java"

# interfaces
.implements Lcom/samsung/android/lib/galaxyfinder/search/api/payload/ResultItemPayload;


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final mIntentAction:Ljava/lang/String;

.field private final mIntentClass:Ljava/lang/String;

.field private final mIntentDataUri:Ljava/lang/String;

.field private final mIntentFlags:I

.field private final mIntentPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    return-void
.end method

.method private getIntentString()Ljava/lang/String;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 43
    invoke-static {v0}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchIntentUtils;->getStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentClass:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentDataUri:Ljava/lang/String;

    .line 47
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->mIntentFlags:I

    .line 48
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/samsung/android/lib/galaxyfinder/search/util/SearchIntentUtils;->getStringFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getStringFromPayload()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;->getIntentString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
