.class Lcom/android/launcher4/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher4/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Folder$2;->this$0:Lcom/android/launcher4/Folder;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher4/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/launcher4/Alarm;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/launcher4/Folder$2;->this$0:Lcom/android/launcher4/Folder;

    iget-object v1, p0, Lcom/android/launcher4/Folder$2;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v1}, Lcom/android/launcher4/Folder;->access$0(Lcom/android/launcher4/Folder;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher4/Folder$2;->this$0:Lcom/android/launcher4/Folder;

    invoke-static {v2}, Lcom/android/launcher4/Folder;->access$1(Lcom/android/launcher4/Folder;)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/Folder;->access$2(Lcom/android/launcher4/Folder;[I[I)V

    .line 574
    return-void
.end method
