.class Lcom/android/launcher4/Cling$1;
.super Ljava/lang/Object;
.source "Cling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Cling;->show(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Cling;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Cling;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Cling$1;->this$0:Lcom/android/launcher4/Cling;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/launcher4/Cling$1;->this$0:Lcom/android/launcher4/Cling;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Cling;->setFocusable(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/launcher4/Cling$1;->this$0:Lcom/android/launcher4/Cling;

    invoke-virtual {v0}, Lcom/android/launcher4/Cling;->requestFocus()Z

    .line 219
    return-void
.end method
