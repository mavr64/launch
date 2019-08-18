.class Lcom/android/launcher4/Folder$3;
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
    iput-object p1, p0, Lcom/android/launcher4/Folder$3;->this$0:Lcom/android/launcher4/Folder;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher4/Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/launcher4/Alarm;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/launcher4/Folder$3;->this$0:Lcom/android/launcher4/Folder;

    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->completeDragExit()V

    .line 702
    return-void
.end method
