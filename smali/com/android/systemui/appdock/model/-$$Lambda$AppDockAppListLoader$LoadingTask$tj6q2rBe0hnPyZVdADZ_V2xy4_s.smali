.class public final synthetic Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$tj6q2rBe0hnPyZVdADZ_V2xy4_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$tj6q2rBe0hnPyZVdADZ_V2xy4_s;->f$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$tj6q2rBe0hnPyZVdADZ_V2xy4_s;->f$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;->lambda$doInBackground$0$AppDockAppListLoader$LoadingTask(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method
