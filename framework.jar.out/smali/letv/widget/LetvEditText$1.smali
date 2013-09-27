.class Lletv/widget/LetvEditText$1;
.super Ljava/lang/Object;
.source "LetvEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lletv/widget/LetvEditText;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lletv/widget/LetvEditText;


# direct methods
.method constructor <init>(Lletv/widget/LetvEditText;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lletv/widget/LetvEditText$1;->this$0:Lletv/widget/LetvEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const-string v2, "LetvEditText"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================onEditorAction, actionId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", keyCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lletv/widget/LetvEditText$1;->this$0:Lletv/widget/LetvEditText;

    #getter for: Lletv/widget/LetvEditText;->mIsActive:Z
    invoke-static {v0}, Lletv/widget/LetvEditText;->access$000(Lletv/widget/LetvEditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lletv/widget/LetvEditText$1;->this$0:Lletv/widget/LetvEditText;

    #calls: Lletv/widget/LetvEditText;->setActiveStatus(Z)V
    invoke-static {v0, v1}, Lletv/widget/LetvEditText;->access$100(Lletv/widget/LetvEditText;Z)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
