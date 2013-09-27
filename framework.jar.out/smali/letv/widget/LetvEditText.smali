.class public Lletv/widget/LetvEditText;
.super Landroid/widget/EditText;
.source "LetvEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lletv/widget/LetvEditText$OnActivationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LetvEditText"


# instance fields
.field private mIsActivating:Z

.field private mIsActive:Z

.field private mIsFocused:Z

.field private mListener:Lletv/widget/LetvEditText$OnActivationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    iput-boolean v1, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    iput-boolean v1, p0, Lletv/widget/LetvEditText;->mIsActivating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lletv/widget/LetvEditText;->mListener:Lletv/widget/LetvEditText$OnActivationListener;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lletv/widget/LetvEditText;->setImeOptions(I)V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setCursorVisible(Z)V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setFocusable(Z)V

    const v0, 0x108040d

    invoke-virtual {p0, v0}, Lletv/widget/LetvEditText;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lletv/widget/LetvEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic access$000(Lletv/widget/LetvEditText;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    return v0
.end method

.method static synthetic access$100(Lletv/widget/LetvEditText;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lletv/widget/LetvEditText;->setActiveStatus(Z)V

    return-void
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lletv/widget/LetvEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lletv/widget/LetvEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private isInputMethodShown()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lletv/widget/LetvEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method private setActiveStatus(Z)V
    .locals 3
    .parameter "isActive"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lletv/widget/LetvEditText;->setCursorVisible(Z)V

    invoke-virtual {p0, v2}, Lletv/widget/LetvEditText;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lletv/widget/LetvEditText;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lletv/widget/LetvEditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lletv/widget/LetvEditText;->requestFocus()Z

    invoke-virtual {p0}, Lletv/widget/LetvEditText;->selectAll()V

    invoke-direct {p0}, Lletv/widget/LetvEditText;->showInputMethod()V

    :goto_0
    iput-boolean p1, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    iget-object v0, p0, Lletv/widget/LetvEditText;->mListener:Lletv/widget/LetvEditText$OnActivationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lletv/widget/LetvEditText;->mListener:Lletv/widget/LetvEditText$OnActivationListener;

    invoke-interface {v0, p0, p1}, Lletv/widget/LetvEditText$OnActivationListener;->onEditorActivated(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setCursorVisible(Z)V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lletv/widget/LetvEditText;->clearFocus()V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Lletv/widget/LetvEditText;->hideInputMethod()V

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lletv/widget/LetvEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    new-instance v1, Lletv/widget/LetvEditText$1;

    invoke-direct {v1, p0}, Lletv/widget/LetvEditText$1;-><init>(Lletv/widget/LetvEditText;)V

    invoke-virtual {p0, v1}, Lletv/widget/LetvEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, keyCode:I
    invoke-direct {p0}, Lletv/widget/LetvEditText;->isInputMethodShown()Z

    move-result v0

    .local v0, isIMShown:Z
    const-string v3, "LetvEditText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================dispatchKeyEventPreIme, keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", show im:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is active:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v6}, Lletv/widget/LetvEditText;->setActiveStatus(Z)V

    :goto_0
    return v2

    :cond_0
    const/16 v3, 0x42

    if-eq v1, v3, :cond_1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lletv/widget/LetvEditText;->mIsActivating:Z

    if-eqz v3, :cond_2

    iput-boolean v6, p0, Lletv/widget/LetvEditText;->mIsActivating:Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public hasEditorFocus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    return v0
.end method

.method public isEditorActivated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "LetvEditText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=================onKeyDown, keyCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", focus state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    if-eqz v2, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    iget-boolean v0, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-boolean v2, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lletv/widget/LetvEditText;->mIsActivating:Z

    invoke-direct {p0, v0}, Lletv/widget/LetvEditText;->setActiveStatus(Z)V

    goto :goto_0

    :cond_1
    :sswitch_1
    iget-boolean v2, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lletv/widget/LetvEditText;->setActiveStatus(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v1, p0, Lletv/widget/LetvEditText;->mIsActive:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    iput-boolean v0, p0, Lletv/widget/LetvEditText;->mIsActivating:Z

    invoke-direct {p0, v0}, Lletv/widget/LetvEditText;->setActiveStatus(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEditorFocus(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lletv/widget/LetvEditText;->setSelected(Z)V

    :goto_0
    iput-boolean p1, p0, Lletv/widget/LetvEditText;->mIsFocused:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lletv/widget/LetvEditText;->setSelected(Z)V

    goto :goto_0
.end method

.method public setOnActivationListener(Lletv/widget/LetvEditText$OnActivationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvEditText;->mListener:Lletv/widget/LetvEditText$OnActivationListener;

    return-void
.end method
