/** A generic dialog for building expression strings
  * @remarks This class also shows an example on how to use QgsExpressionBuilderWidget
  */
class QgsExpressionBuilderDialog : QDialog
{
%TypeHeaderCode
#include <qgsexpressionbuilderdialog.h>
%End

  public:
    QgsExpressionBuilderDialog( QgsVectorLayer* layer, QString startText = QString(), QWidget* parent = NULL );

    /** The builder widget that is used by the dialog */
    QgsExpressionBuilderWidget* expressionBuilder();

    void setExpressionText( const QString& text );

    QString expressionText();

    /** Sets geometry calculator used in distance/area calculations.
      * @note added in version 2.0
      */
    void setGeomCalculator( const QgsDistanceArea & da );

  protected:
    /**
     * Is called when the dialog get accepted or rejected
     * Used to save geometry
     *
     * @param r result value (unused)
     */
    virtual void done( int r );
};
