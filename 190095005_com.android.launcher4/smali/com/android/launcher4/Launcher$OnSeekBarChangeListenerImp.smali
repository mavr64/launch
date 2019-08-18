.class Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarChangeListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 3789
    iput-object p1, p0, Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;->this$0:Lcom/android/launcher4/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;)V
    .locals 0

    .prologue
    .line 3789
    invoke-direct {p0, p1}, Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;-><init>(Lcom/android/launcher4/Launcher;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 3794
    if-eqz p3, :cond_0

    .line 3795
    iget-object v0, p0, Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$69(Lcom/android/launcher4/Launcher;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3796
    iget-object v0, p0, Lcom/android/launcher4/Launcher$OnSeekBarChangeListenerImp;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$42(Lcom/android/launcher4/Launcher;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3798
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3803
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3808
    return-void
.end method
