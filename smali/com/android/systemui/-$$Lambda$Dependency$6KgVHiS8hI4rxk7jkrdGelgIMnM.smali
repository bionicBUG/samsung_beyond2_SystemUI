.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$6KgVHiS8hI4rxk7jkrdGelgIMnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$LazyDependencyCreator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$6KgVHiS8hI4rxk7jkrdGelgIMnM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$6KgVHiS8hI4rxk7jkrdGelgIMnM;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$6KgVHiS8hI4rxk7jkrdGelgIMnM;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$6KgVHiS8hI4rxk7jkrdGelgIMnM;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$6KgVHiS8hI4rxk7jkrdGelgIMnM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/systemui/Dependency;->lambda$start$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
