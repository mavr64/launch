.class Lcom/android/launcher4/MemoryDumpActivity$1;
.super Ljava/lang/Object;
.source "MemoryDumpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/MemoryDumpActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/MemoryDumpActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher4/MemoryDumpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/MemoryDumpActivity$1;->this$0:Lcom/android/launcher4/MemoryDumpActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher4/MemoryDumpActivity$1;->this$0:Lcom/android/launcher4/MemoryDumpActivity;

    invoke-virtual {v0}, Lcom/android/launcher4/MemoryDumpActivity;->finish()V

    .line 148
    return-void
.end method
