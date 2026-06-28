.class public Landroid/icu/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final ARGUMENT:Landroid/icu/text/MessageFormat$Field;

.field private static final serialVersionUID:J = 0x683a3b3b54a02d5dL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1494
    new-instance v0, Landroid/icu/text/MessageFormat$Field;

    const-string v1, "message argument field"

    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1465
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/MessageFormat$Field;

    if-ne v0, v1, :cond_1

    .line 1480
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat$Field;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {v0}, Landroid/icu/text/MessageFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1481
    sget-object p0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    return-object p0

    .line 1483
    :cond_0
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string v0, "Unknown attribute name."

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1477
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string v0, "A subclass of MessageFormat.Field must implement readResolve."

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
