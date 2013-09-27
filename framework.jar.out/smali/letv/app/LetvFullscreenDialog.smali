.class public Lletv/app/LetvFullscreenDialog;
.super Landroid/app/Dialog;
.source "LetvFullscreenDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lletv/app/LetvFullscreenDialog$1;,
        Lletv/app/LetvFullscreenDialog$ButtonId;,
        Lletv/app/LetvFullscreenDialog$ButtonStyle;
    }
.end annotation


# instance fields
.field private mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lletv/app/LetvFullscreenDialog$ButtonStyle;Z)V
    .locals 7
    .parameter "context"
    .parameter "button_style"
    .parameter "hasProgressBar"

    .prologue
    const v6, 0x102032d

    const/16 v3, 0x400

    const v5, 0x102032c

    const/4 v4, 0x0

    const v2, 0x10301e4

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object v2, Lletv/app/LetvFullscreenDialog$ButtonStyle;->NO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    iput-object v2, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {p0}, Lletv/app/LetvFullscreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, w:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const v2, 0x1090082

    invoke-virtual {p0, v2}, Lletv/app/LetvFullscreenDialog;->setContentView(I)V

    iput-object p2, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    sget-object v2, Lletv/app/LetvFullscreenDialog$1;->$SwitchMap$letv$app$LetvFullscreenDialog$ButtonStyle:[I

    iget-object v3, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v3}, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-nez p3, :cond_0

    const v2, 0x102032a

    invoke-virtual {p0, v2}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v2}, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ordinal()I

    move-result v2

    sget-object v3, Lletv/app/LetvFullscreenDialog$ButtonStyle;->NO_BUTTON:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v3}, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v5}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0, v5}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x10301de

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .end local v0           #view:Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p0, v5}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v5}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x102032e

    invoke-virtual {p0, v2}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setParams(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "w"
    .parameter "lay"

    .prologue
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string v3, "LetvFullScreenDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*****************"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public setButtonClickListener(Lletv/app/LetvFullscreenDialog$ButtonId;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    invoke-virtual {p1}, Lletv/app/LetvFullscreenDialog$ButtonId;->ordinal()I

    move-result v0

    iget-object v1, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v1}, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lletv/app/LetvFullscreenDialog$1;->$SwitchMap$letv$app$LetvFullscreenDialog$ButtonId:[I

    invoke-virtual {p1}, Lletv/app/LetvFullscreenDialog$ButtonId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x102032c

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x102032d

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x102032e

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setButtonFocus(Lletv/app/LetvFullscreenDialog$ButtonId;)V
    .locals 3
    .parameter "id"

    .prologue
    invoke-virtual {p1}, Lletv/app/LetvFullscreenDialog$ButtonId;->ordinal()I

    move-result v1

    iget-object v2, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v2}, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lletv/app/LetvFullscreenDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_1
    sget-object v1, Lletv/app/LetvFullscreenDialog$1;->$SwitchMap$letv$app$LetvFullscreenDialog$ButtonId:[I

    invoke-virtual {p1}, Lletv/app/LetvFullscreenDialog$ButtonId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x102032c

    invoke-virtual {p0, v1}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    const v1, 0x102032d

    invoke-virtual {p0, v1}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :pswitch_2
    const v1, 0x102032e

    invoke-virtual {p0, v1}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setButtonText(Lletv/app/LetvFullscreenDialog$ButtonId;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    invoke-virtual {p1}, Lletv/app/LetvFullscreenDialog$ButtonId;->ordinal()I

    move-result v0

    iget-object v1, p0, Lletv/app/LetvFullscreenDialog;->mButtonStyle:Lletv/app/LetvFullscreenDialog$ButtonStyle;

    invoke-virtual {v1}, Lletv/app/LetvFullscreenDialog$ButtonStyle;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lletv/app/LetvFullscreenDialog$1;->$SwitchMap$letv$app$LetvFullscreenDialog$ButtonId:[I

    invoke-virtual {p1}, Lletv/app/LetvFullscreenDialog$ButtonId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x102032c

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x102032d

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x102032e

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const v0, 0x1020046

    invoke-virtual {p0, v0}, Lletv/app/LetvFullscreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
